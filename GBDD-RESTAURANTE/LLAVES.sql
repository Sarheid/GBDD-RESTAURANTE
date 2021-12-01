alter table CHEF
   add constraint FK_CHEF_RELA_REST foreign key (ID_RESTAURANTE)
      references RESTAURANTE (ID_RESTAURANTE)
      on delete restrict;

alter table DETALLE
   add constraint FK_DETA_RELA_MENU foreign key (ID_MENU)
      references MENU (ID_MENU)
      on delete restrict;

alter table DETALLE
   add constraint FK_DETA_RELA_FACT foreign key (ID_FACTURA)
      references FACTURA (ID_FACTURA)
      on delete restrict;

alter table FACTURA
   add constraint FK_FACT_RELA_CLIE foreign key (ID_CLIENTE)
      references CLIENTE (ID_CLIENTE)
      on delete restrict;

alter table FACTURA
   add constraint FK_FACT_RELA_REST foreign key (ID_RESTAURANTE)
      references RESTAURANTE (ID_RESTAURANTE)
      on delete restrict;

alter table MATERIAL
   add constraint FK_MATE_RELA_REST foreign key (ID_RESTAURANTE)
      references RESTAURANTE (ID_RESTAURANTE)
      on delete restrict;

alter table MESAS
   add constraint FK_MESA_RELA_MESE foreign key (ID_MESERO)
      references MESERO (ID_MESERO)
      on delete restrict;

alter table MESAS
   add constraint FK_MESA_RELA_RESE foreign key (ID_RESERVACION)
      references RESERVACION (ID_RESERVACION)
      on delete restrict;

alter table MESERO
   add constraint FK_MESE_RELA_REST foreign key (ID_RESTAURANTE)
      references RESTAURANTE (ID_RESTAURANTE)
      on delete restrict;

alter table RESERVACION
   add constraint FK_RESE_RELA_CLIE foreign key (ID_CLIENTE)
      references CLIENTE (ID_CLIENTE)
      on delete restrict;

alter table RESERVACION
   add constraint FK_RESE_RELA_MESAS foreign key (ID_MESAS )
      references MESAS (ID_MESAS )
      on delete restrict;