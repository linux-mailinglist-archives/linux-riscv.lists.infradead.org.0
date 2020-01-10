Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1FBB137498
	for <lists+linux-riscv@lfdr.de>; Fri, 10 Jan 2020 18:18:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=klj6GBeNYQh7SIcNSW8bxl+XfmTSaLcgrLcHKWWNTcc=; b=TgK+O36XhtB3h5
	HzrE1B1v01iDwr2SGC29ZhufJDPwN20jfmeghn5q3ERV7whP6hINmONbFz/lyizORa/3N2YpXMWYn
	X1B2+tRg1kjT39ixQHiqfhxSFiFD8xNtC2B9a0Vn29ZLnJAYvsbSvY6fgP6NW09CJNtxgxBJI7n+W
	wNebSMNxyjv5kSRWrdlJveturKjaU+/EaZ5JslEcUEdWpztIKbM7QvimLpks5zPoKQTMQwKTfIGyE
	ltNkFbhEkZTUWEbtPdIEQ6dU0XsPqTPiSBY94vK3vJ83XMXhZPldSxMs05WiIwp8LfiV7f7Kxwzj0
	5QqtyHGx0+Sb8enlTdFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipxvJ-0008Cl-QN; Fri, 10 Jan 2020 17:18:13 +0000
Received: from ms.lwn.net ([45.79.88.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipxuQ-0007PG-CZ
 for linux-riscv@lists.infradead.org; Fri, 10 Jan 2020 17:17:19 +0000
Received: from lwn.net (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ms.lwn.net (Postfix) with ESMTPSA id 2D85077D;
 Fri, 10 Jan 2020 17:17:08 +0000 (UTC)
Date: Fri, 10 Jan 2020 10:17:07 -0700
From: Jonathan Corbet <corbet@lwn.net>
To: Palmer Dabbelt <palmerdabbelt@google.com>
Subject: Re: [PATCH] RISC-V: Typo fixes in image header and documentation.
Message-ID: <20200110101707.06800f3c@lwn.net>
In-Reply-To: <mhng-94b9cad5-0d14-480f-b428-8752630064d2@palmerdabbelt-glaptop>
References: <20191210072947.7018340c@lwn.net>
 <4912c007ab6c19321c8c988ae2328efbfb3e582d.camel@wdc.com>
 <mhng-3a815562-1222-4737-a77c-6dab9948db79@palmerdabbelt-glaptop>
 <mhng-94b9cad5-0d14-480f-b428-8752630064d2@palmerdabbelt-glaptop>
Organization: LWN.net
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_091718_481570_4CF3BEE8 
X-CRM114-Status: UNSURE (   7.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [45.79.88.28 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: aou@eecs.berkeley.edu, mchehab+samsung@kernel.org,
 linux-doc@vger.kernel.org, palmer@sifive.com, linux-kernel@vger.kernel.org,
 Atish Patra <Atish.Patra@wdc.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 merker@debian.org, linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 09 Jan 2020 15:42:27 -0800 (PST)
Palmer Dabbelt <palmerdabbelt@google.com> wrote:

> > I was assuming it was going through the risc-v tree since it touches arch
> > code :)  I can go ahead and apply it.  
> 
> I don't see this in 5.5-rc5.

It's in docs-next; I've not pushed it through straight to 5.5.  I can do
that, I suppose, if it seems urgent?

Thanks,

jon

