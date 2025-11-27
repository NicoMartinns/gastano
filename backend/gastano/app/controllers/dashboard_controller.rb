class DashboardController < ApplicationController
  def index
    @total_receitas = Receitum.sum(:valor)
    @total_gastos   = Gasto.sum(:valor)
    @saldo          = @total_receitas - @total_gastos

    @ultimas_receitas = Receitum.order(created_at: :desc).limit(5)
    @ultimos_gastos   = Gasto.order(created_at: :desc).limit(5)

    # === Dados para o gráfico (agrupar gastos por data) ===
    gastos_por_dia = Gasto.group(:data).sum(:valor)

    @labels_gastos = gastos_por_dia.keys.map(&:to_s)    # datas
    @values_gastos = gastos_por_dia.values             # valores
  end
end
