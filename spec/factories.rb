FactoryGirl.define do
  factory :saint do
    name 'St. Maximilian Kolbe'
    gender 'Male'
    feast_day Date.new(2017, 8, 14)
    birth_date DateTime.new(1894, 1, 8)
    birth_accuracy 3
    death_date DateTime.new(1941, 8, 14)
    death_accuracy 3
    birth_location 'Zduńska Wola, Kingdom of Poland, Russian Empire'
    death_location 'Auschwitz, Nazi Germany'
    beatification_date DateTime.new(1971, 10, 17)
    beatification_accuracy 3
    canonization_date DateTime.new(1982, 10, 10)
    canonization_accuracy 3
    birth_latitude 51.5984
    birth_longitude 18.9342
    death_latitude 50.0273
    death_longitude 19.2018
    short_description 'Martyr of Charity at Auschwitz.'
    long_description 'Martyr of Charity at Auschwitz.'
    pope false
    cardinal false
    bishop false
    priest true
    religious true
    lay false
    martyr true
    founder false
    mystic false
    royalty false
    doctor_of_the_church false
    early_church_father false
    canonization_status 'Saint'
    fame_level 80
    published true

    factory :published_saint do
      published true
    end
  end
end