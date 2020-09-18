require 'pry'

class Company
    attr_accessor :name, :size

    def initialize(name, size)
        @name = name
        @size = size

    end

end

companies = [
    Company.new('Alpha', 30),
    Company.new('Beta', 300),
    Company.new('Delta', 3000)
]

def list_companies companies
    company_list = companies.map do |company|
        company.name + " - " + company.size.to_s
    end
    p company_list
end

def sum_company_sizes companies
    sum = companies.reduce(0) do |acc, element|
        acc + element.size
    end
    sum
end

def over_100_companies companies
    companies.select do |company|
        company.size > 100
    end
end

def find_company_name companies
    find_beta = companies.filter do |company|
        company.name == "Beta"
    end
    p find_beta
end

def largest_company companies
    biggest_company = companies[0]
    companies.select do |company|
        company.size > biggest_company.size ? biggest_company = company : biggest_company 
    end
    biggest_company
end

def sort_company_by_size companies
    descending_size = companies.sort do |company|
        company.size
    end
    descending_size
end

# binding.pry