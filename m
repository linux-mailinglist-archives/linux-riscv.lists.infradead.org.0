Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71365D1BA7
	for <lists+linux-riscv@lfdr.de>; Thu, 10 Oct 2019 00:26:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eF7S7UoSziIwmujVb/7U1BSgm2RuZ1cMyYCahJ+VMvg=; b=lSEIa5y0aAU5Q8
	dG8LcmGBL9bS2SbgaLojvWdax+7QblBtA8bFCkZlw6UU4lsJZBHqs0EPFJyd64JnnT+5lzhjwjfF4
	bCgktCCbV0S7EqHADMN8c/ZMkqQXw9ESswn9it5eBJ5V8vHQp+1jnU2XSNExTuCrwQ9YXf5tCnIKG
	77ZkWkgQiHHbz6+jApReKPifTrsRpjFQNBuuftK7fr1dLJnLNAS6ihKQvnzhC8PRddISTulDegFmV
	VZ3iycgad6u70YvY1tJXFGnWQHA7cNds/NfZyMps8hslpf9qPrvzfmOHQy4xcICJwL9C/gcIqGJ4S
	oh4aJCg+Dh3FuYaub4jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIKPP-0003A0-KC; Wed, 09 Oct 2019 22:26:15 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIKPM-00039N-0v
 for linux-riscv@lists.infradead.org; Wed, 09 Oct 2019 22:26:13 +0000
Received: by mail-io1-xd43.google.com with SMTP id q1so9160369ion.1
 for <linux-riscv@lists.infradead.org>; Wed, 09 Oct 2019 15:26:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=xKOBnu3vyrbYs+yVc1anmwNLgo+Dsz1N+1/T+XrPL3k=;
 b=FQOgJj4V4ewf2GDsATw3jWNrLpUW0sFE/u973EEBTQFtiVoH7SRJCuohbipAkukMqA
 1abiZfwsUvdoSGwvZxMP0BrF49aAk2ouUKil790AKTdMw2kdQX1O2gZjJVoEZ3djXQLz
 8ezx5SkhZkjYUCLkgM5aYkkR6px7oh8GI9kyakzqwUWaoHFbGT9hWISJ//Ft4tpmldtK
 cykpw0VAnicKVVeoL1T03V1tpUdsbHN+nyGADuTnesecO5zMOdh1ANnVdUHLUewEGhXY
 P7iwS51HcCVlyOmJgwXx0Qjb0vrxEvUuCtlb9sWUs3T2fDAIX3raiXKdB8dDVk643P+T
 9R9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=xKOBnu3vyrbYs+yVc1anmwNLgo+Dsz1N+1/T+XrPL3k=;
 b=uId9szwD8djrkMY1pWjBx9oI0bf1h99emp2VdG8WrBk62GtSiW9WWEQ9essK2R8fQq
 fnFJTQBmCUeeCMMHqjQ4dZ5R7EVo+952w93+A5baPzCRiIom1GU+Qg01MbmqDUDcmqvI
 JWNrU3/uqP+RjPIVuRv90RrFxXyRks5XZi3QcJuwSV+p6nGwbL3EXS7eKQn+mYhPm+t7
 WB0fTz/R/exVFvWXLHdbUoiG4vfyO/uU19zuMr6ti4xaBLekwKflKAjH6KsOJjLh/nfM
 EQnJFxJ5Ajh1cr2OIM6K6RoDA1/Mvl0vwKG/hJk8MHibyR+enHhVsAfFPLGZnXGfp3i+
 N2pg==
X-Gm-Message-State: APjAAAUyEDCV/hA+Vnb6Km+WlLJOD2gjm/xAi96mH+cAIaIWcD51cccw
 bWkzH+Q+IsNkzQ0D814s44O4cA==
X-Google-Smtp-Source: APXvYqwWo1rZRGJvvPvWwd6KxxvwdHisWmnYRCVbu8fDLhbDrxEbdGmfv0xWkHUwZxqb9slxmhGw3A==
X-Received: by 2002:a02:cd8e:: with SMTP id l14mr5946947jap.30.1570659970360; 
 Wed, 09 Oct 2019 15:26:10 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 d26sm1856581ioc.16.2019.10.09.15.26.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Oct 2019 15:26:09 -0700 (PDT)
Date: Wed, 9 Oct 2019 15:26:08 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Christoph Hellwig <hch@infradead.org>
Subject: Re: [PATCH 4/4] riscv: remove the switch statement in do_trap_break()
In-Reply-To: <20191007161050.GA20596@infradead.org>
Message-ID: <alpine.DEB.2.21.9999.1910091524590.11044@viisi.sifive.com>
References: <1569199517-5884-1-git-send-email-vincent.chen@sifive.com>
 <1569199517-5884-5-git-send-email-vincent.chen@sifive.com>
 <20190927224711.GI4700@infradead.org>
 <alpine.DEB.2.21.9999.1910070906570.10936@viisi.sifive.com>
 <20191007161050.GA20596@infradead.org>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_152612_077053_7AF0FA80 
X-CRM114-Status: UNSURE (   9.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: Vincent Chen <vincent.chen@sifive.com>, linux-riscv@lists.infradead.org,
 palmer@sifive.com, linux-kernel@vger.kernel.org, aou@eecs.berkeley.edu
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 7 Oct 2019, Christoph Hellwig wrote:

> On Mon, Oct 07, 2019 at 09:08:23AM -0700, Paul Walmsley wrote:
> >  		force_sig_fault(SIGTRAP, TRAP_BRKPT,
> >  				(void __user *)(regs->sepc));
> 
> No nee for the extra braces, which also means it all fits onto a single
> line.  You could have just copied what I pasted..

It turns out that the rewrite breaks allnoconfig:

https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org/thread/VDCU2WOB6KQISREO4V5DTXEI2M7VOV55/

Am just going to pick up Vincent's original patch.  Then we can do 
any subsequent cleanup in a separate patch.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
