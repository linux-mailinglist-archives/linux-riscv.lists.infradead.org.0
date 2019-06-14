Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B099946ABB
	for <lists+linux-riscv@lfdr.de>; Fri, 14 Jun 2019 22:39:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pbe++pGCKO/r6jk9zpxujzKIN7hR0GPPlqDRo8xKgv8=; b=TCUHbeMog7KBnw
	mBeFIHtJ0VJss6d3I72z2isdY/9gKixtTUdY2Xt0fRr/nHb4bQIpBg3gxK5rExLqeAEvG+MZMpzCi
	6LGBG9ltiXjMwKLW9U3yua1TTacLvEWeOz0au2h4wzz4NVpx6iZL/N2vffyEDArqrdxdJhYR5gU3u
	U+ev1UkISCVP1Rq2x64Di2X+El4ioycTW6crncb3+KFDCz/GaFmwbin/BXyZSB2QNUyEy56M5+kYQ
	VjcaV3hY7bgH1yAFO7DJtEGGH6bNxzAbgc4fXMFMuxPZ4D03zSwz0SoeAxvoxkisix0kwcxu8hWiG
	y14O6qFx2Rj/+SvjXvKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbsyF-0005PN-Mw; Fri, 14 Jun 2019 20:38:47 +0000
Received: from ms.lwn.net ([45.79.88.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbswE-0003p2-QD
 for linux-riscv@lists.infradead.org; Fri, 14 Jun 2019 20:36:44 +0000
Received: from lwn.net (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ms.lwn.net (Postfix) with ESMTPSA id 0E0D8128A;
 Fri, 14 Jun 2019 20:36:42 +0000 (UTC)
Date: Fri, 14 Jun 2019 14:36:40 -0600
From: Jonathan Corbet <corbet@lwn.net>
To: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Subject: Re: [PATCH v4 00/28] Convert files to ReST - part 1
Message-ID: <20190614143640.40ee353a@lwn.net>
In-Reply-To: <cover.1560361364.git.mchehab+samsung@kernel.org>
References: <cover.1560361364.git.mchehab+samsung@kernel.org>
Organization: LWN.net
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_133642_908324_926B186F 
X-CRM114-Status: UNSURE (   7.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [45.79.88.28 listed in list.dnswl.org]
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
Cc: Song Liu <songliubraving@fb.com>, Albert Ou <aou@eecs.berkeley.edu>,
 bpf@vger.kernel.org, Daniel Borkmann <daniel@iogearbox.net>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 linux-kernel@vger.kernel.org, Palmer Dabbelt <palmer@sifive.com>,
 Alexei Starovoitov <ast@kernel.org>,
 Mauro Carvalho Chehab <mchehab@infradead.org>,
 Greentime Hu <green.hu@gmail.com>, netdev@vger.kernel.org,
 Yonghong Song <yhs@fb.com>, linux-riscv@lists.infradead.org,
 Vincent Chen <deanbo422@gmail.com>, Martin KaFai Lau <kafai@fb.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 12 Jun 2019 14:52:36 -0300
Mauro Carvalho Chehab <mchehab+samsung@kernel.org> wrote:

> This is mostly a rebase of the /33 series v3 I sent, on the top of the latest
> linux-next  (next-20190612).
> 
> Changes from v3:
> 
> - dropped cpufreq conversion - documents are too outdated;
> - infiniband patch is not here anymore - as it should be merged via RDMA;
> - s390 patches were already merged;
> - Dropped Geert as Maintainer from fb/framebuffer.rst, as per his request;
> - Did a minor editorial change at popwerpc/cxl.rst per Andrew Donellan
>   request;
> - Added acks/reviews;
> - trivial rebase fixups.

So I had to pull docs-next forward to -rc4, but then I was able to apply
this set except for parts 5, 6, 14, 18, and 19.  Some progress made, but
this is somewhat painful work...

jon

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
