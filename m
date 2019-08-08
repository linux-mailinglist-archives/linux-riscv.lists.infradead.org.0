Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9C8886D7B
	for <lists+linux-riscv@lfdr.de>; Fri,  9 Aug 2019 00:56:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N/JgPvbimvllkXKLs8Fg3PDRjDHiWLB67uMKTea0DDA=; b=KclFtucWPmaTwJ
	cFSCadmxzYW0C7+0BiHq761rxQIgvC7LcutNQUk+tY0auyzf/pwI9csOwdhrmiVrQE0ABLq25evKj
	D8FCaTuJeFOSpyvNc7QDwS+qGlotenfsyld7aFMudxq7TuXEprESGdJgMktXiL6u9GT+OJDuhhV4o
	H0pFob98VJ2PJ2DHIZcbNU3fa+UDlT6BBm8lpXY5LWEaTbVaVQxXiZ0MlBok4yc5Jj19sUoxks5zf
	b1F6nt2sDUlBbYmK/uh/L0h6DQ0I6Q0+HtLdwDt2MAYjV4D7FJ8ATnjaM5QyF9xetXICB39SU1rWa
	+/1D32gecShJDWuJA68g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvrKp-0008GT-Pg; Thu, 08 Aug 2019 22:56:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvrKn-0008G9-R9
 for linux-riscv@lists.infradead.org; Thu, 08 Aug 2019 22:56:38 +0000
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com
 [209.85.222.174])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 36D562173E
 for <linux-riscv@lists.infradead.org>; Thu,  8 Aug 2019 22:56:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565304997;
 bh=1kgfg2u0VvSSAyVnDXUX0dXjWHTqsPHMjNRngfqfQUE=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=2tE2GpPB+BXu1EQhYHhOzd7Oa1T+eF4En1xo6N5XdddI0vuIDhoaro1Pf7S1ZKBr7
 H03wDRobZTaSwytpEXymUOtsl6dmW9yyttdis0OZwThij26sBLCSnn99F7AjczHPPS
 /O5LUCjyysvXArLpo7a/9XlCHdk4H7kPL1YKqHTI=
Received: by mail-qk1-f174.google.com with SMTP id r6so70299702qkc.0
 for <linux-riscv@lists.infradead.org>; Thu, 08 Aug 2019 15:56:37 -0700 (PDT)
X-Gm-Message-State: APjAAAWk62D5TZiJ/jqs8z3WutCUlsfsYPXJX5+1c/JIwXqKGmJozdwI
 EsFuZguMg1qSHXWRAtpiWTJf4w7W6Ki3AyqCqw==
X-Google-Smtp-Source: APXvYqyj2kUWAWCGeBwzaRUWZX1PPK9z+mXWtT1nM3BJRodHPwfRd4dExJVae9unAVJvhED59NF02Tnbg9U9rGFDZow=
X-Received: by 2002:a37:a48e:: with SMTP id
 n136mr16025678qke.223.1565304996424; 
 Thu, 08 Aug 2019 15:56:36 -0700 (PDT)
MIME-Version: 1.0
References: <alpine.DEB.2.21.9999.1908081520100.6414@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.1908081520100.6414@viisi.sifive.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Thu, 8 Aug 2019 16:56:25 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+db+_u47yutb+H7dcMqP27PF9jjwinsB2qgi609t9zWQ@mail.gmail.com>
Message-ID: <CAL_Jsq+db+_u47yutb+H7dcMqP27PF9jjwinsB2qgi609t9zWQ@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: riscv: remove obsolete cpus.txt
To: Paul Walmsley <paul.walmsley@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_155637_904056_0C5845D3 
X-CRM114-Status: GOOD (  10.53  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-riscv@lists.infradead.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Aug 8, 2019 at 4:22 PM Paul Walmsley <paul.walmsley@sifive.com> wrote:
>
>
> Remove the now-obsolete riscv/cpus.txt DT binding document, since we
> are using YAML binding documentation instead.
>
> While doing so, transfer the explanatory text about 'harts' (with some
> edits) into the YAML file, at Rob's request.
>
> Link: https://lore.kernel.org/linux-riscv/CAL_JsqJs6MtvmuyAknsUxQymbmoV=G+=JfS1PQj9kNHV7fjC9g@mail.gmail.com/
> Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
> Cc: Rob Herring <robh@kernel.org>
> ---
>  .../devicetree/bindings/riscv/cpus.txt        | 162 ------------------
>  .../devicetree/bindings/riscv/cpus.yaml       |  12 ++
>  2 files changed, 12 insertions(+), 162 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/riscv/cpus.txt

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
