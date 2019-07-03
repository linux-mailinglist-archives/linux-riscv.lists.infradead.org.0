Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 264D25E4C5
	for <lists+linux-riscv@lfdr.de>; Wed,  3 Jul 2019 15:02:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=raI2INsXbEUu+84Vshtumkf6S5kop0mbl76Typ7eOh8=; b=TaUycN2vTnGQCk
	35UmOzeqXvr4arvNCV813po0wnnUeuSplwdMqrIj62gKcxkiKD01iHU+XEJTiBZ3AzIhCgOIq6VVS
	71zPLb5sKezoj7dssgiQj4M703elVpfS066GXazwlUTEK+7phGVtyW8NOFmGUE+B9KkqcT+T/0Lqs
	cxnCa6I0skzyRPP0p1J5I1OSdYlBM43I7MnGBGEpkrIM0PstDxIiRhfjGbH7YGBSA2a7sG5f36xYu
	ivobgFyIRryZhs1SVvlwiWwzdw/vy5eioRfKnZVZZN2rBbL3ougC9EP/pNvR2XnHeXb3xtsUE/FAK
	xlwCUIaTYGT9/ozB5Yrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hietr-0007Sf-1q; Wed, 03 Jul 2019 13:02:15 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiesy-0006qL-2c
 for linux-riscv@lists.infradead.org; Wed, 03 Jul 2019 13:01:22 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 82EEA68B05; Wed,  3 Jul 2019 15:01:16 +0200 (CEST)
Date: Wed, 3 Jul 2019 15:01:16 +0200
From: Christoph Hellwig <hch@lst.de>
To: Palmer Dabbelt <palmer@sifive.com>
Subject: Re: [PATCH] riscv: remove free_initrd_mem
Message-ID: <20190703130116.GA8513@lst.de>
References: <20190520063326.26083-1-hch@lst.de>
 <mhng-37ed4bee-df0a-4dc3-adbb-a6bf98952241@palmer-si-x1c4>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <mhng-37ed4bee-df0a-4dc3-adbb-a6bf98952241@palmer-si-x1c4>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_060120_512135_2BAB7B75 
X-CRM114-Status: UNSURE (   4.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-riscv@lists.infradead.org, Christoph Hellwig <hch@lst.de>,
 Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Paul, are you going to pick this one up?

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
