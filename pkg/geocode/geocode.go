package geocode

import "errors"

var ErrEmptyResult = errors.New("empty result")

type Result struct {
	Location string
	Lat, Lon float64
}

type Geocode interface {
	Geocode(location, lang string) (*Result, error)
	Reverse(lat, lon float64, lang string) (*Result, error)
}
