import { check } from 'k6'
import http from 'k6/http'

const baseUrl = 'http://localhost:9999'

export default function() {
    const resp = http.get(`${baseUrl}/clientes/6/extrato`)
    check(resp, {
        'check status 404': (resp) => resp.status == 404,
    })
}