image_num = 100;
TESTS = {'Ab'};
% 'As', 'An', 'Absnv', 'Absna'

load('./data/model/mnist_data.mat')
load('./data/model/model.mat')
data.labels = testlabels(1:image_num);
data.images = testdata(1:image_num);


for i = 1:length(TESTS)
    type = TESTS{i};
    config_Ab = make_model(type);
    result = run_model(model, data.images, config);
    rate = evaluateResult(result, data.labels);
    reportRate(type, rate);
end