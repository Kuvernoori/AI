// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AIModelMarketplace {
    struct Model {
        string name;
        string description;
        uint256 price;
        address payable creator;
        uint8 ratingSum;
        uint256 ratingCount;
    }

    Model[] public models;
    mapping(uint256 => mapping(address => bool)) public purchased;
    mapping(uint256 => mapping(address => bool)) public rated;

    event ModelListed(uint256 modelId, string name, address creator);
    event ModelPurchased(uint256 modelId, address buyer);
    event ModelRated(uint256 modelId, uint8 rating, address rater);

    function listModel(string memory name, string memory description, uint256 price) public {
        require(price > 0, "Price must be greater than zero");
        models.push(Model(name, description, price, payable(msg.sender), 0, 0));
        emit ModelListed(models.length - 1, name, msg.sender);
    }

    function purchaseModel(uint256 modelId) public payable {
        require(modelId < models.length, "Model does not exist");
        Model storage model = models[modelId];
        require(msg.value == model.price, "Incorrect payment amount");
        require(!purchased[modelId][msg.sender], "Model already purchased");
        
        model.creator.transfer(msg.value);
        purchased[modelId][msg.sender] = true;
        emit ModelPurchased(modelId, msg.sender);
    }

    function rateModel(uint256 modelId, uint8 rating) public {
        require(modelId < models.length, "Model does not exist");
        require(purchased[modelId][msg.sender], "You must purchase the model first");
        require(!rated[modelId][msg.sender], "You already rated this model");
        require(rating > 0 && rating <= 5, "Rating must be between 1 and 5");

        Model storage model = models[modelId];
        model.ratingSum += rating;
        model.ratingCount += 1;
        rated[modelId][msg.sender] = true;
        emit ModelRated(modelId, rating, msg.sender);
    }

    function getModelDetails(uint256 modelId)
        public
        view
        returns (
            string memory name,
            string memory description,
            uint256 price,
            address creator,
            uint256 averageRating
        )
    {
        require(modelId < models.length, "Model does not exist");
        Model storage model = models[modelId];
        uint256 avgRating = model.ratingCount == 0 ? 0 : model.ratingSum / model.ratingCount;
        return (model.name, model.description, model.price, model.creator, avgRating);
    }
}
