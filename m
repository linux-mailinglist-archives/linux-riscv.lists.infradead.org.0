Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 583622E2AF
	for <lists+linux-riscv@lfdr.de>; Wed, 29 May 2019 18:59:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hssklzrFPs66Kfda0wsFsZd7xDE4wcPOS8N4YnR3IV0=; b=BJ20pQA8dmpU+w
	BYtofVGzeCh2PIabOTiC+HA4GfiptqXFutfh+9KfVw1mWoORf5MIDLpF1NNInSKg3zL+8HG/M4jSV
	U22DsBOz6qOu07NGIc/lIZ+oLl/U/5H0NLjGLefmraFys/Y6agwRRS7PmbhbS+gU2+slLf0umQxnC
	nngIesC4Et95GHOmvwRSqkJfYRF/Zv0ozZjaZWSyVWJlpmuF0BoMqUnQ8DeVF6+UJ8M2XgdWGbGI+
	7aDCiCuGeE1LDYkNNot5jyKJ0jj11oUXtxZcZ0g683RCEA0peRr50QpDZknaTkQdG9/pmAWd9k6fg
	Mct+dpFK4AO3XVyj/4FA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW1v8-0008NN-Sc; Wed, 29 May 2019 16:59:22 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW1v6-0008MX-6D
 for linux-riscv@lists.infradead.org; Wed, 29 May 2019 16:59:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EDDF0341;
 Wed, 29 May 2019 09:59:17 -0700 (PDT)
Received: from redmoon (e121166-lin.cambridge.arm.com [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9681C3F5AF;
 Wed, 29 May 2019 09:59:16 -0700 (PDT)
Date: Wed, 29 May 2019 17:59:06 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Alan Mikhak <alan.mikhak@sifive.com>
Subject: Re: [PATCH v2 0/2] tools: PCI: Fix broken pcitest compilation
Message-ID: <20190529165856.GA25642@redmoon>
References: <1558646281-12676-1-git-send-email-alan.mikhak@sifive.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1558646281-12676-1-git-send-email-alan.mikhak@sifive.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_095920_239483_A0ACDAC1 
X-CRM114-Status: UNSURE (   8.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: linux-pci@vger.kernel.org, palmer@sifive.com, linux-kernel@vger.kernel.org,
 kishon@ti.com, paul.walmsley@sifive.com, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, May 23, 2019 at 02:17:59PM -0700, Alan Mikhak wrote:
> This patchset fixes a compiler error and two warnings that resulted in a
> broken compilation of pcitest.
> 
>  tools/pci/pcitest.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)

Applied to pci/misc for v5.3, thanks.

Lorenzo

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
