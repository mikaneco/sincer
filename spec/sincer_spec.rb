# frozen_string_literal: true

RSpec.describe Sincer do
  it "has a version number" do
    expect(Sincer::VERSION).not_to be nil
  end

  describe ".rephrase" do
    let(:current_time) { Time.new(2023, 1, 1, 12, 0, 0) }

    before do
      allow(Time).to receive(:now).and_return(current_time)
    end

    context "when given time is in the future" do
      it "returns time difference in years" do
        expect(described_class.rephrase("2025-09-20T12:00:00")).to eq "2 years later"
      end

      it "returns time difference in months" do
        expect(described_class.rephrase("2023-03-20T12:00:00")).to eq "2 months later"
      end

      it "returns time difference in days" do
        expect(described_class.rephrase("2023-01-03T12:00:00")).to eq "2 days later"
      end

      it "returns time difference in hours" do
        expect(described_class.rephrase("2023-01-01T14:00:00")).to eq "2 hours later"
      end

      it "returns time difference in minutes" do
        expect(described_class.rephrase("2023-01-01T12:02:00")).to eq "2 minutes later"
      end

      it "returns 'just now' when time difference is less than a minute" do
        expect(described_class.rephrase("2023-01-01T12:00:59")).to eq "just now"
      end
    end

    context "when given time is in the past" do
      it "returns time difference in years" do
        expect(described_class.rephrase("2020-03-20T12:00:00")).to eq "2 years ago"
      end

      it "returns time difference in months" do
        expect(described_class.rephrase("2022-10-20T12:00:00")).to eq "2 months ago"
      end

      it "returns time difference in days" do
        expect(described_class.rephrase("2022-12-30T12:00:00")).to eq "2 days ago"
      end

      it "returns time difference in hours" do
        expect(described_class.rephrase("2023-01-01T10:00:00")).to eq "2 hours ago"
      end

      it "returns time difference in minutes" do
        expect(described_class.rephrase("2023-01-01T11:58:00")).to eq "2 minutes ago"
      end

      it "returns 'just now' when time difference is less than a minute" do
        expect(described_class.rephrase("2023-01-01T11:59:01")).to eq "just now"
      end
    end
  end
end
