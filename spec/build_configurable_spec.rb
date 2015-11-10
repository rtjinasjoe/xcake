require 'spec_helper'

module Xcake
  describe BuildConfigurable do

    before :each do
      @build_configurable = Object.new
      @build_configurable.extend(BuildConfigurable)
    end

    context "when creating debug configuration" do

      before :each do
        @build_configuration = @build_configurable.debug_build_configuration :debug
      end

      it "should store build configuration" do
        expect(@build_configurable.debug_build_configurations.count).to eq(1)
      end

      context "that already exists" do

        before :each do
          @duplicate_build_configuration = @build_configurable.debug_build_configuration :debug
        end

        it "should return same build configuration" do
          expect(@duplicate_build_configuration).to be(@build_configuration)
        end
      end
    end

    context "when creating release configuration" do

      before :each do
        @build_configuration = @build_configurable.release_build_configuration :release
      end

      it "should store build configuration" do
        expect(@build_configurable.release_build_configurations.count).to eq(1)
      end

      context "that already exists" do

        before :each do
          @duplicate_build_configuration = @build_configurable.release_build_configuration :release
        end

        it "should return same build configuration" do
          expect(@duplicate_build_configuration).to be(@build_configuration)
        end
      end
    end

    # context "when accessing all configuration" do
    #   it "should store new one" do
    #
    #   end
    # end
  end
end
