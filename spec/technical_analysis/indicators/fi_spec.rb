require 'technical-analysis'
require 'spec_helper'

describe 'Indicators' do
  describe "FI" do
    input_data = SpecHelper.get_test_data(:close, :volume)

    describe 'Forced Index' do
      it 'Calculates FI' do
        output = TechnicalAnalysis::Fi.calculate(input_data)

        expected_output = [
          {:date_time=>"2019-01-09T00:00:00.000Z", :value=>115287987.2000001},
          {:date_time=>"2019-01-08T00:00:00.000Z", :value=>114556606.19999972},
          {:date_time=>"2019-01-07T00:00:00.000Z", :value=>-18008575.19999913},
          {:date_time=>"2019-01-04T00:00:00.000Z", :value=>348561555.4999996},
          {:date_time=>"2019-01-03T00:00:00.000Z", :value=>-1433110593.199999},
          {:date_time=>"2019-01-02T00:00:00.000Z", :value=>6414672.59999923},
          {:date_time=>"2018-12-31T00:00:00.000Z", :value=>52094078.90000067},
          {:date_time=>"2018-12-28T00:00:00.000Z", :value=>3339247.9999993355},
          {:date_time=>"2018-12-27T00:00:00.000Z", :value=>-52641026.99999906},
          {:date_time=>"2018-12-26T00:00:00.000Z", :value=>601104008.9999986},
          {:date_time=>"2018-12-24T00:00:00.000Z", :value=>-144959996.99999917},
          {:date_time=>"2018-12-21T00:00:00.000Z", :value=>-582537190.0000021},
          {:date_time=>"2018-12-20T00:00:00.000Z", :value=>-261456813.7999983},
          {:date_time=>"2018-12-19T00:00:00.000Z", :value=>-246555930.60000032},
          {:date_time=>"2018-12-18T00:00:00.000Z", :value=>71894933.69999984},
          {:date_time=>"2018-12-17T00:00:00.000Z", :value=>-66605646.799999654},
          {:date_time=>"2018-12-14T00:00:00.000Z", :value=>-222193369.19999996},
          {:date_time=>"2018-12-13T00:00:00.000Z", :value=>58745288.49999982},
          {:date_time=>"2018-12-12T00:00:00.000Z", :value=>16673099.59999996},
          {:date_time=>"2018-12-11T00:00:00.000Z", :value=>-44588998.799999945},
          {:date_time=>"2018-12-10T00:00:00.000Z", :value=>68552489.99999909},
          {:date_time=>"2018-12-07T00:00:00.000Z", :value=>-259658176.39999956},
          {:date_time=>"2018-12-06T00:00:00.000Z", :value=>-84128672.69999996},
          {:date_time=>"2018-12-04T00:00:00.000Z", :value=>-334478362.4999998},
          {:date_time=>"2018-12-03T00:00:00.000Z", :value=>252955247.99999923},
          {:date_time=>"2018-11-30T00:00:00.000Z", :value=>-38241532.19999996},
          {:date_time=>"2018-11-29T00:00:00.000Z", :value=>-57717776.19999944},
          {:date_time=>"2018-11-28T00:00:00.000Z", :value=>307809724.99999946},
          {:date_time=>"2018-11-27T00:00:00.000Z", :value=>-15639333.199999813},
          {:date_time=>"2018-11-26T00:00:00.000Z", :value=>104063205.60000056},
          {:date_time=>"2018-11-23T00:00:00.000Z", :value=>-106071625.30000022},
          {:date_time=>"2018-11-21T00:00:00.000Z", :value=>-6219247.999999646},
          {:date_time=>"2018-11-20T00:00:00.000Z", :value=>-600986678.4000016},
          {:date_time=>"2018-11-19T00:00:00.000Z", :value=>-319277709.3999995},
          {:date_time=>"2018-11-16T00:00:00.000Z", :value=>76725619.60000016},
          {:date_time=>"2018-11-15T00:00:00.000Z", :value=>213312352.5999993},
          {:date_time=>"2018-11-14T00:00:00.000Z", :value=>-328772056.1999987},
          {:date_time=>"2018-11-13T00:00:00.000Z", :value=>-90647877.39999989},
          {:date_time=>"2018-11-12T00:00:00.000Z", :value=>-525207609.0000006},
          {:date_time=>"2018-11-09T00:00:00.000Z", :value=>-137957395.20000035},
          {:date_time=>"2018-11-08T00:00:00.000Z", :value=>-36922334.19999948},
          {:date_time=>"2018-11-07T00:00:00.000Z", :value=>205742335.19999927},
          {:date_time=>"2018-11-06T00:00:00.000Z", :value=>69268889.60000022},
          {:date_time=>"2018-11-05T00:00:00.000Z", :value=>-389165081.2999991},
          {:date_time=>"2018-11-02T00:00:00.000Z", :value=>-1342026294.4000008},
          {:date_time=>"2018-11-01T00:00:00.000Z", :value=>177925675.1999992},
          {:date_time=>"2018-10-31T00:00:00.000Z", :value=>211373463.60000008},
          {:date_time=>"2018-10-30T00:00:00.000Z", :value=>38677205.80000009},
          {:date_time=>"2018-10-29T00:00:00.000Z", :value=>-185597581.4000001},
          {:date_time=>"2018-10-26T00:00:00.000Z", :value=>-165170950.0},
          {:date_time=>"2018-10-25T00:00:00.000Z", :value=>136718771.40000024},
          {:date_time=>"2018-10-24T00:00:00.000Z", :value=>-305539796.7999995},
          {:date_time=>"2018-10-23T00:00:00.000Z", :value=>80456833.59999938},
          {:date_time=>"2018-10-22T00:00:00.000Z", :value=>38527063.6000001},
          {:date_time=>"2018-10-19T00:00:00.000Z", :value=>108156545.69999973},
          {:date_time=>"2018-10-18T00:00:00.000Z", :value=>-167452577.5999996},
          {:date_time=>"2018-10-17T00:00:00.000Z", :value=>-21785164.80000018},
          {:date_time=>"2018-10-16T00:00:00.000Z", :value=>137964214.49999976},
          {:date_time=>"2018-10-15T00:00:00.000Z", :value=>-143832137.5},
          {:date_time=>"2018-10-12T00:00:00.000Z", :value=>302529938.200001},
          {:date_time=>"2018-10-11T00:00:00.000Z", :value=>-101043431.20000133},
          {:date_time=>"2018-10-10T00:00:00.000Z", :value=>-431793575.69999963}
        ]

        expect(output).to eq(expected_output)
      end

      it "Throws exception if not enough data" do
        expect {TechnicalAnalysis::Fi.calculate([])}.to raise_exception(Validation::ValidationError)
      end
    end
  end
end
