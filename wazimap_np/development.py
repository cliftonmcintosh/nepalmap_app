from wazimap.data.tables import get_datatable


def get_development_profile(geo_code, geo_level, session):
    development_data = {
        'is_vdc': False
    }

    if geo_level == 'district':
        assistance_amount_table = get_datatable(
            'development_assistance_amount'
        )
        assistance_amount, _ = assistance_amount_table.get_stat_data(
            geo_level, geo_code, percent=False)

        development_data['development_assistance_amount'] = {
            'name': 'Development Assistance in US dollars',
            'values': {
                'this':
                    assistance_amount['US dollars disbursed']['values']['this']
            }
        }
        assistance_projects_table = get_datatable(
            'development_assistance_projects'
        )
        development_projects, _ = assistance_projects_table.get_stat_data(
            geo_level, geo_code, percent=False)

        development_data['development_assistance_projects'] = {
            'name': 'Development Assistance Projects',
            'values': {
                'this':
                    development_projects['projects']['values']['this']
            }
        }

        development_data['area_has_data'] = True

    else:
        development_data = {
            'area_has_data': False
        }

    return development_data
