/**
 * Created by bjohnson on 7/12/20.
 */

import {LightningElement} from 'lwc';

export default class ListsAndInterators extends LightningElement {

    teams = [
        {
            id: 1,
            name: 'New England Patriots',
            city: 'Foxboro',
            arena: 'Gillete Stadium',
            championships: '6',
            link: 'https://www.patriots.com'
        },
        {
            id: 2,
            name: 'Boston Celtics',
            city: 'Boston',
            arena: 'Boston Garden',
            championships: '17',
            link: 'https://www.celtics.com'
        },
        {
            id: 3,
            name: 'Boston Red Sox',
            city: 'Boston',
            arena: 'Fenway park',
            championships: '9',
            link: 'https://www.redsox.com'
        },
        {
            id: 4,
            city : 'Boston Boston',
            name: 'Bruins',
            arena: 'Boston Garden',
            championships: '6',
            link: 'https://www.bruins.com'
        }
    ]
}