export interface comprasInterface {
    id_compra?: number;
    id_usuario: number;
    id_banco: number;
    id_categoria: number;
    dono_compra: string;
    valor_compra: number;
    compra_parcelada: boolean;
    numero_parcelas: number;
    data_compra: Date;
    status_compra: boolean;  /* pago  ou não pago */
}