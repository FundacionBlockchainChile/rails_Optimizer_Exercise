class Jugador < ApplicationRecord
  belongs_to :equipo, 
    :class_name => '::Equipo',
    :foreign_key => 'equipo_id'
end
