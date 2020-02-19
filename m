Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81B6E164098
	for <lists+linux-riscv@lfdr.de>; Wed, 19 Feb 2020 10:41:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AGHriK19fSLT4n72XHaQ+MiehB+gUryAlA00RYgTCbc=; b=JXFNVjC+UARwiH
	UM4jFZGJbcXH8vhG+JdP3YKKdZzqFDv1pYfQ1tIZBPGbwefnW2sprcu5Sd4xr+mYBYX/gJKMYzHVN
	mIQ4JHCl8OtCcc66gUbNl2OoXNNfS0N6JBtT2lqSYzsMl1i0uJRUxAWchnnndBNrJA3qw2f/sKvcI
	mprsI1a4gQfaamNN/oFnzx9PztOm9cdS4YEgVQ91zSecBQiqF0HeIziDDGj5+h+kTCb3af1EtIxqB
	zfYVqO4toPCoHU2PYWN+JREar3I2qf0EeZmFSxQtwwE0qr0jNkEkBR7ZE8lPOX+5bF5Ze56amis96
	oRoYniSorkCkIzoy4a1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4LrX-0001D9-C2; Wed, 19 Feb 2020 09:41:47 +0000
Received: from ms.lwn.net ([45.79.88.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4LrU-0001Cj-6q
 for linux-riscv@lists.infradead.org; Wed, 19 Feb 2020 09:41:45 +0000
Received: from localhost.localdomain (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ms.lwn.net (Postfix) with ESMTPSA id 30ECB4A8;
 Wed, 19 Feb 2020 09:41:39 +0000 (UTC)
Date: Wed, 19 Feb 2020 02:41:22 -0700
From: Jonathan Corbet <corbet@lwn.net>
To: Alexandre Ghiti <alex@ghiti.fr>
Subject: Re: [PATCH] documentation: vm: Advertise support for pte_special in
 riscv
Message-ID: <20200219024122.5fe552a5@lwn.net>
In-Reply-To: <20200219065953.27350-1-alex@ghiti.fr>
References: <20200219065953.27350-1-alex@ghiti.fr>
Organization: LWN.net
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_014144_249375_85FC18EF 
X-CRM114-Status: GOOD (  12.64  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: linux-riscv@lists.infradead.org, linux-doc@vger.kernel.org,
 Palmer Dabbelt <palmer@dabbelt.com>, linux-kernel@vger.kernel.org,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 19 Feb 2020 01:59:53 -0500
Alexandre Ghiti <alex@ghiti.fr> wrote:

> Risc-V architecture has actually supported pte_special since its merge
> upstream, simply add this info to the documentation.
> 
> Signed-off-by: Alexandre Ghiti <alex@ghiti.fr>
> ---
>  Documentation/features/vm/pte_special/arch-support.txt | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/features/vm/pte_special/arch-support.txt b/Documentation/features/vm/pte_special/arch-support.txt
> index 2dc5df6a1cf5..3d492a34c8ee 100644
> --- a/Documentation/features/vm/pte_special/arch-support.txt
> +++ b/Documentation/features/vm/pte_special/arch-support.txt
> @@ -23,7 +23,7 @@
>      |    openrisc: | TODO |
>      |      parisc: | TODO |
>      |     powerpc: |  ok  |
> -    |       riscv: | TODO |
> +    |       riscv: |  ok  |

Applied, thanks.

jon

