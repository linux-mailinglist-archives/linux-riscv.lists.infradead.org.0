Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD241F95E4
	for <lists+linux-riscv@lfdr.de>; Tue, 12 Nov 2019 17:44:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v/sUzfanueLFTCRNYPGvTQv80OEExeJIwxl2x54Rn3o=; b=rLE2FtT+o63WyR
	nGUMl6OT31SsVMyrhvgO+RPUM3y97FAOC+jvvgqel02RJoPmuieXd1doH1bVGGEMecCY4CYvNMywp
	QLDfg8LitkuLVUhPB1/LocT1guwOvAnb3voFvLk5OYlbT/brTLesQrbvYg6D3YxbjcFXX/POZA1Ti
	m5sJqEwXCEO+GzyW1xcanns7ffSDFHol8KQi9pGKdgGi/Supwn9fYja0NgjD2rHCnr4Sx+x//rZlo
	Gu1ENeetILI89Gj66LkyK7e93sOuU0u0fpir/CsaXIq1rWjUbpbEoXDKPBTK2f2OStNzo9U4ff2kf
	qASzUeHfs9n9AZKir3Hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUZHM-0001m6-4j; Tue, 12 Nov 2019 16:44:32 +0000
Received: from ms.lwn.net ([45.79.88.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUZHJ-0001li-FB
 for linux-riscv@lists.infradead.org; Tue, 12 Nov 2019 16:44:30 +0000
Received: from localhost.localdomain (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ms.lwn.net (Postfix) with ESMTPSA id 2262B7DE;
 Tue, 12 Nov 2019 16:44:24 +0000 (UTC)
Date: Tue, 12 Nov 2019 09:44:22 -0700
From: Jonathan Corbet <corbet@lwn.net>
To: Paul Walmsley <paul@pwsan.com>
Subject: Re: [PATCH] Documentation: admin-guide: add earlycon documentation
 for RISC-V
Message-ID: <20191112094422.7abbc581@lwn.net>
In-Reply-To: <alpine.DEB.2.21.999.1911111729271.32333@utopia.booyaka.com>
References: <alpine.DEB.2.21.9999.1910091252160.11044@viisi.sifive.com>
 <CAMuHMdUfqvkVJHHwyuYxLSxj_iUofx-vSvEj92C5mg3bGxHqmA@mail.gmail.com>
 <20191010112347.4a7237bb@lwn.net> <20191108061009.GA30335@lst.de>
 <alpine.DEB.2.21.999.1911111729271.32333@utopia.booyaka.com>
Organization: LWN.net
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_084429_508771_9FD82EBB 
X-CRM114-Status: GOOD (  13.25  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 Andreas Schwab <schwab@suse.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 11 Nov 2019 17:30:13 +0000 (UTC)
Paul Walmsley <paul@pwsan.com> wrote:

> On Fri, 8 Nov 2019, Christoph Hellwig wrote:
> 
> > can you please revert this?  The paragraph above this addition already
> > describes the riscv case perfecty well with my previous patch:
> > 
> > 	earlycon=	[KNL] Output early console device and options.
> > 
> > 			When used with no options, the early console is
> > 			determined by stdout-path property in device tree's
> > 			chosen node or the ACPI SPCR table if supported by
> > 			the platform.
> > 
> > 			[RISCV] When used with no options, the early
> > 			console is determined by the stdout-path
> > 			property in the device tree's chosen node.  
> 
> I support reverting the RISCV section, now that Christoph's more general 
> change has gone in.

OK, the patch has been reverted.

Thanks,

jon

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
