Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64A80118ADC
	for <lists+linux-riscv@lfdr.de>; Tue, 10 Dec 2019 15:30:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yk8YekGoLWJGPcIqmOZmF1iR60ydVC8BZaC4GN9hs58=; b=emM97bKQGqkoJv
	dWqsAPs97hvVF1F0yKmLOtS8Qe1wBbV2cVhRz7M+9fsghNvK5Oxrhd/rsPu1McfLmxNSe/6dX6dJ4
	EaWKaS7BOMtS6TK33Qr1zHhpdfoHyDAV2FE5ehkZnEQiwufuKx3FdpGFfD+6puqVIHR9ZPAjhKfu1
	hsevaf1M1DgxIaHcnV6RSM9J1qnAQj6po0gDO5wgg3YrvtrEdguE5u0tGOLVBAvsSzhKrJdOZ5Vch
	5qiQE2dzaQbMlm9f6cZ+Z4Me3IVl/ZLNZob6yejbpAnIef/yPqZ78gu/fBCk49rlcuUS7NbBhJE+6
	KR6zyNifUDf3nGPm+QUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iegWU-0000UM-Sq; Tue, 10 Dec 2019 14:29:58 +0000
Received: from ms.lwn.net ([45.79.88.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iegWR-0000Tj-PJ
 for linux-riscv@lists.infradead.org; Tue, 10 Dec 2019 14:29:56 +0000
Received: from localhost.localdomain (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ms.lwn.net (Postfix) with ESMTPSA id 63380739;
 Tue, 10 Dec 2019 14:29:48 +0000 (UTC)
Date: Tue, 10 Dec 2019 07:29:47 -0700
From: Jonathan Corbet <corbet@lwn.net>
To: Palmer Dabbelt <palmerdabbelt@google.com>
Subject: Re: [PATCH] RISC-V: Typo fixes in image header and documentation.
Message-ID: <20191210072947.7018340c@lwn.net>
In-Reply-To: <mhng-3a815562-1222-4737-a77c-6dab9948db79@palmerdabbelt-glaptop>
References: <4912c007ab6c19321c8c988ae2328efbfb3e582d.camel@wdc.com>
 <mhng-3a815562-1222-4737-a77c-6dab9948db79@palmerdabbelt-glaptop>
Organization: LWN.net
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_062955_821016_8F0A8E50 
X-CRM114-Status: UNSURE (   8.10  )
X-CRM114-Notice: Please train this message.
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
Cc: aou@eecs.berkeley.edu, mchehab+samsung@kernel.org,
 linux-doc@vger.kernel.org, palmer@sifive.com, linux-kernel@vger.kernel.org,
 Atish Patra <Atish.Patra@wdc.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 merker@debian.org, linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 05 Dec 2019 15:03:10 -0800 (PST)
Palmer Dabbelt <palmerdabbelt@google.com> wrote:

> Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>
> 
> I'm assuming this is not going in through the RISC-V tree as it mostly touches
> Documentation/.

I was assuming it was going through the risc-v tree since it touches arch
code :)  I can go ahead and apply it.

Thanks,

jon

