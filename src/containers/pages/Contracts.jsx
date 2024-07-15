import TrialDay from "components/contracts/TrialDay"
import ContractsList from "components/contracts/contractsList"
import Layout from "hocs/layouts/Layout"

const Contracts = () => {
    return(
        <Layout>
            <div className="mb-0"> 
                <ContractsList />
            </div>
            <div className="mt-0"> 
                <TrialDay />
            </div>
        </Layout>
    )
}

export default Contracts