Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D826B47086
	for <lists+linux-riscv@lfdr.de>; Sat, 15 Jun 2019 16:47:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=rkGMKiM3VRMqp+bAkSJoqgwsn4YynZV2+BpA5vsMOwY=; b=R9Zb8t0dyC6ejGknE9YURV++J
	tFfPbg1Lhqanqr95PDt9rxpG6/EcYxwilc8K+6VLD3Wl+XMqwyIJIxaQDo/LMDEbum6FUVzu2yDk4
	MkVRMAeBRb9OASDvrd9KeOjDmx8lgrtu12h3Ys0uShOqJySuKR4J6uUv25etgx99ou4I6Vjp7dGQW
	gdmBVGSajrj8jQFVRrWa1O6Dzl5cEaOJ2f/kL1ZHTTf9mi5PLr2SRxZHyCNlKncohASaKuSWiiWiX
	O+gx1HmhzcCFK09BgV4L8c/PiQQcwzx5VPrWqDrMhzV46Z4ue3sZM2nXGNn6mu+Ly1QXgIaVmXaOP
	uRul046yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hc9xw-0007S3-6e; Sat, 15 Jun 2019 14:47:36 +0000
Received: from mail-ed1-f66.google.com ([209.85.208.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hc9xr-0007RK-4F
 for linux-riscv@lists.infradead.org; Sat, 15 Jun 2019 14:47:32 +0000
Received: by mail-ed1-f66.google.com with SMTP id z25so8179143edq.9
 for <linux-riscv@lists.infradead.org>; Sat, 15 Jun 2019 07:47:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=P6MfxoMR5HxITUtSbXDSCXq1KKx5HwLDb+RtNfB7+Q0=;
 b=Z0iOxCE9SGZn6CKAZqWc2DyzMDaPrVT6TPhnio6r8KqS4j2APk77J+S1WEz1Cm7Yes
 mOifBwuhUihHonniFEP4gVj1ACukcJUKYqO383OerglKbx4oH+2sG72eJMPZ6o1yCEHJ
 PNx21fEmv3lP3BXtSfNu3Fa/C+nY70u5uGMX8QNnKu0WznB0tx5tEB4UD5eFquTQsLbh
 HEgKYpdOI0iqs21cllg64d37H4ERBzOIhWKlrUvlTFt+BXtqR6QN5YcJeyVFwSnYD7xp
 ZX21sy9mmKUHevlMk27l9290/UrXboTQMlnfXRUmeBHkdKIuJ8f6EHDD1pQqE4YKwoNj
 GTQg==
X-Gm-Message-State: APjAAAXqO1vIi4bQ5Y1QKR1F5JfrmTXUP0plm9j96RiASXz450CGNMf5
 mt3Xx+D0VXSaMn48LrVvumlqvw==
X-Google-Smtp-Source: APXvYqx60nftjqTZ6Cn/Y/FV4B7vkGtlOBnMaXADaTwJawTvTGPVGe8oDnHKlkHwDjh/pgyxGjx1hg==
X-Received: by 2002:a17:906:2605:: with SMTP id
 h5mr60226354ejc.178.1560610046527; 
 Sat, 15 Jun 2019 07:47:26 -0700 (PDT)
Received: from localhost
 (134.217.90.212.static.wline.lns.sme.cust.swisscom.ch. [212.90.217.134])
 by smtp.gmail.com with ESMTPSA id e33sm1941896eda.83.2019.06.15.07.47.24
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 15 Jun 2019 07:47:24 -0700 (PDT)
Date: Sat, 15 Jun 2019 07:47:24 -0700 (PDT)
X-Google-Original-Date: Sat, 15 Jun 2019 07:11:48 PDT (-0700)
Subject: Re: [PATCH] MAINTAINERS: change the arch/riscv git tree to the new
 shared tree
In-Reply-To: <20190613070721.8341-1-paul.walmsley@sifive.com>
From: Palmer Dabbelt <palmer@sifive.com>
To: Paul Walmsley <paul.walmsley@sifive.com>
Message-ID: <mhng-94da1779-349d-4019-92b9-e16a9c1d2890@palmer-si-x1e>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190615_074731_170720_6B75075E 
X-CRM114-Status: GOOD (  11.64  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.66 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 13 Jun 2019 00:07:21 PDT (-0700), Paul Walmsley wrote:
> Palmer, with Konstantin's gracious help, set up a shared kernel.org
> git tree for arch/riscv patches going forward.  Change the MAINTAINERS
> file accordingly.
>
> Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
> Cc: Palmer Dabbelt <palmer@sifive.com>
> ---
>  MAINTAINERS | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 57f496cff999..290359a46bbe 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -13476,7 +13476,7 @@ RISC-V ARCHITECTURE
>  M:	Palmer Dabbelt <palmer@sifive.com>
>  M:	Albert Ou <aou@eecs.berkeley.edu>
>  L:	linux-riscv@lists.infradead.org
> -T:	git git://git.kernel.org/pub/scm/linux/kernel/git/palmer/riscv-linux.git
> +T:	git git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git
>  S:	Supported
>  F:	arch/riscv/
>  K:	riscv

Reiewed-by: Palmer Dabbelt <palmer@sifive.com>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
