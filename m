Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E934E10916A
	for <lists+linux-riscv@lfdr.de>; Mon, 25 Nov 2019 16:58:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y1kQQDB0tpj3h7vS7CBv84NkSqErZMtFFXcdNzlGjSQ=; b=jh9K6JV61C8gFM
	tI+X2H872KetpNQnSBz7Y3pw1uHewhXTTrcWYt7PqH1WvuKKsiReSX+L+PGn5fjeYu6Rnlh9C4jxq
	qZ8eRMpKj7dzoW8QkROZDux8VGA4B5O2zvh0IdNTM4aVf2pZPSZS0q4uQGuq98pw6qwnpTq3FPKuZ
	8ljiR3HZ/pQUeU22e0wdqhZgNtAvDDUXl0wVK++3dsPeMHD03VBarKMZd9E9Lp2Lx7YLlMA1S+vLk
	eUko4Ay2qfiU38gmYszgrOkNkdwc1fxLOBqew3Ps7x83iYQBoTz+eQBnpsW7ojgPe2uAZn5FeKN4g
	02UcFoAYOO30fmM+dmCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZGkW-0008Bm-NE; Mon, 25 Nov 2019 15:58:04 +0000
Received: from ms.lwn.net ([45.79.88.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZGkT-0008B6-Cj
 for linux-riscv@lists.infradead.org; Mon, 25 Nov 2019 15:58:03 +0000
Received: from lwn.net (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ms.lwn.net (Postfix) with ESMTPSA id 51F582D6;
 Mon, 25 Nov 2019 15:57:57 +0000 (UTC)
Date: Mon, 25 Nov 2019 08:57:56 -0700
From: Jonathan Corbet <corbet@lwn.net>
To: Paul Walmsley <paul.walmsley@sifive.com>
Subject: Re: [PATCH] Documentation: riscv: add patch acceptance guidelines
Message-ID: <20191125085756.75b8088d@lwn.net>
In-Reply-To: <alpine.DEB.2.21.9999.1911241841210.22625@viisi.sifive.com>
References: <alpine.DEB.2.21.9999.1911221842200.14532@viisi.sifive.com>
 <20191123092552.1438bc95@lwn.net>
 <alpine.DEB.2.21.9999.1911231523390.14532@viisi.sifive.com>
 <CAPcyv4hmagCVLCTYmmv0U8-YD5BEoQPV=wtm5hbp3MxqwZRQUA@mail.gmail.com>
 <alpine.DEB.2.21.9999.1911231546450.14532@viisi.sifive.com>
 <CAPcyv4hBNfabaZmKs0XF+UT9Py8zJqpNdu5KsToqp305NASKNA@mail.gmail.com>
 <alpine.DEB.2.21.9999.1911231637510.14532@viisi.sifive.com>
 <CAPcyv4iqTR8s0v8jH7haWCBQAzhZinUEsypiH7Ts9FCf+F9Bvg@mail.gmail.com>
 <alpine.DEB.2.21.9999.1911241841210.22625@viisi.sifive.com>
Organization: LWN.net
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_075801_434896_D9A67326 
X-CRM114-Status: GOOD (  15.10  )
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
Cc: krste@berkeley.edu, aou@eecs.berkeley.edu, waterman@eecs.berkeley.edu,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, palmer@dabbelt.com,
 Dan Williams <dan.j.williams@intel.com>, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sun, 24 Nov 2019 18:48:54 -0800 (PST)
Paul Walmsley <paul.walmsley@sifive.com> wrote:

> On Sat, 23 Nov 2019, Dan Williams wrote:
> 
> > I'm open to updating the headers to make a section heading that
> > matches what you're trying to convey, however that header definition
> > should be globally agreed upon. I don't want the document that tries
> > to clarify per-subsystem behaviours itself to have per-subsystem
> > permutations. I think we, subsystem maintainers, at least need to be
> > able to agree on the topics we disagree on.  
> 
> Unless you're planning to, say, follow up with some kind of automated 
> process working across all of the profile documents in such a way that it 
> would make technical sense for the different sections to be standardized, 
> I personally don't see any need at all for profile document 
> standardization.  As far as I can tell, these documents are meant for 
> humans, rather than computers, to read.  And in the absence of a strong 
> technical rationale to limit how maintainers express themselves here, I 
> don't think it's justified.

Patch changelogs are (mostly) meant for humans to read too, but we have
some standards for how we want them formatted.  I don't think the
maintainer profiles should be all that tightly specified, but it would be
a whole lot better if cross-subsystem developers knew where to look to
quickly find the information they need.  So I'd prefer it if we could find
a way to conform to a set of loose guidelines for these files.

Thanks,

jon

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
