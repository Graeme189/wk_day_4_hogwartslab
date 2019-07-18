require_relative('../db/sql_runner')

class House

attr_reader :id, :name

def initialize(options)
  @id = options['id'].to_i
  @name = options['name']
  @logo_url = options['logo_url']
end

def save()
  sql = "INSERT INTO hogwarts_houses
    (
    name,
    logo_url
    )
    VALUES
    (
    $1, $2
    )
    RETURNING *"
    values = [@name, @logo_url]
    house_data = SqlRunner.run(sql, values)
    @id = house_data.first()['id'].to_i
  end

end
