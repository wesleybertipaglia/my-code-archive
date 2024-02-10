import { Link } from 'react-router-dom'
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'
import { faLocationDot } from '@fortawesome/free-solid-svg-icons'

const Pet = ({ name, animal, breed, images, state, city, id }) => {
    let image = images[0] ?? 'http://pets-images.dev-apis.com/pets/none.jpg'

    return (
        <Link to={'/details/' + id}>
            <div className="flex gap-6 items-center p-2 border rounded">
                <img
                    src={image}
                    alt={name}
                    className="h-20 w-20 aspect-square object-cover rounded-full"
                />
                <div>
                    <h2>{name}</h2>
                    <p>
                        {animal} - {breed}
                    </p>
                    <p className="inline-flex gap-2 items-center">
                        <FontAwesomeIcon icon={faLocationDot} />
                        <span>
                            {city}, {state}
                        </span>
                    </p>
                </div>
            </div>
        </Link>
    )
}

export default Pet
