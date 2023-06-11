package com.sir.react.zynerator.service;

import com.sir.react.zynerator.audit.AuditBusinessObjectEnhanced;
import com.sir.react.zynerator.criteria.BaseCriteria;
import com.sir.react.zynerator.history.HistBusinessObject;
import com.sir.react.zynerator.history.HistCriteria;
import com.sir.react.zynerator.repository.AbstractHistoryRepository;
import com.sir.react.zynerator.repository.AbstractRepository;

public abstract class AbstractReferentielServiceImpl<T extends AuditBusinessObjectEnhanced, H extends HistBusinessObject, CRITERIA extends BaseCriteria, HC extends HistCriteria, REPO extends AbstractRepository<T, Long>, HISTREPO extends AbstractHistoryRepository<H, Long>> extends AbstractServiceImpl<T, H, CRITERIA, HC, REPO, HISTREPO> {

    public AbstractReferentielServiceImpl(REPO dao, HISTREPO historyRepository) {
    super(dao, historyRepository);
    }

}