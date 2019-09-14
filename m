Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B022B2A61
	for <lists+linux-riscv@lfdr.de>; Sat, 14 Sep 2019 09:56:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ykIVlpk3R7/HnAVWlwDR0MVLJSZQUBQLjRyn/NXZak0=; b=gEz9zGzYnsbcB3
	tDR3CU2XBi17WZXSHYqAFq0+bs8eXL7nDp7k43GFSrNWdCL29RqedVY5a38mRiZApD40yZUWsIBHq
	3WJlqkCIckdDbzkGI4ZIAR72DckjCSJuCUafhrbx2Xki6/oiIPMlz62x+of5Xx7G1u9V5hSCXeMfN
	t0omFG36VAlIe2KAGdGqZ7Hnz6BKTUxkMsMfvzlv1EoJRb+V8VFEGPh4d5u3TVuLDX9WEYA3nQskN
	Bf64BEuOMwRpbHeyGM1IkxLAgspLhDu6+b4LaGvfEni0m8fqHFfvXxMWRc1VywcET+PSWYk5S57Cf
	YwhiZVM2kmbGDZXwIRGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i92uY-0006C8-6T; Sat, 14 Sep 2019 07:56:02 +0000
Received: from ms.lwn.net ([45.79.88.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i92uT-0006BS-Fx
 for linux-riscv@lists.infradead.org; Sat, 14 Sep 2019 07:55:58 +0000
Received: from localhost.localdomain (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ms.lwn.net (Postfix) with ESMTPSA id 347342CC;
 Sat, 14 Sep 2019 07:55:51 +0000 (UTC)
Date: Sat, 14 Sep 2019 01:55:47 -0600
From: Jonathan Corbet <corbet@lwn.net>
To: Palmer Dabbelt <palmer@sifive.com>
Subject: Re: [PATCH] Documentation: Add "earlycon=sbi" to the admin guide
Message-ID: <20190914015547.7f151d2b@lwn.net>
In-Reply-To: <20190913203843.27149-1-palmer@sifive.com>
References: <20190913203843.27149-1-palmer@sifive.com>
Organization: LWN.net
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190914_005557_536903_6AD3346B 
X-CRM114-Status: UNSURE (   7.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Christoph Hellwig <hch@infradead.org>, schwab@suse.de,
 linux-riscv@lists.infradead.org, linux-doc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, 13 Sep 2019 13:38:43 -0700
Palmer Dabbelt <palmer@sifive.com> wrote:

> This argument is supported on RISC-V systems and widely used, but was
> not documented here.
> 
> Signed-off-by: Palmer Dabbelt <palmer@sifive.com>

Applied, thanks.

jon

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
