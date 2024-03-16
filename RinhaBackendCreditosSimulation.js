// @ts-check

import 'k6'

const randomClientId = () => 1 + Math.floor(Math.random() * 5)

export default function() {
    console.log(randomClientId())
    console.log(randomClientId())
    console.log(randomClientId())
}