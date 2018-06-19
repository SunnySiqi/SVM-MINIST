function num = wangsiqiTest(imgPath, modelPath)
    % load model;
    SVMModel = load(modelPath);
    SVMModel = SCMModel.model;
    % load image;
    testImg = fopen(imgPath, 'rb');

    % Convert to double and rescale to [0,1]
    testImg = double(images) / 255;
    
    num = predict(SVMModel,testImg);
  
end

