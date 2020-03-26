Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4848C19391F
	for <lists+linux-riscv@lfdr.de>; Thu, 26 Mar 2020 08:04:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OnfX0OE0ma/Av42U9uoiSTKulXAJE+HJ9d0B8OOmxos=; b=pz/UfuvbwMdOxEDZgXzKZgF0P
	E8uSC2PRJuR1/KvjuIwdgqpqJnAYszArVtYXuMyKBwrvVxZF3KraDHXXEqm7/0JGKATsaSfieH9x9
	uvxJBtNuO0nrdNJVKvMITaawA423PqJ2w8AZJNrkdX3hBMgR4AzdoIh/SV4FoFwYCf3LIcC4vs8Te
	D0qIypnZd4gkpP2qB/OEIY1kCq8SWf3r2ETfUFFSB/a52FEdLVdz0OjYw1OnwUHVDXtsrDIdbXQka
	zOpNheBI/avZH0RWu/YNhB5524lAuhm4Z2u7KSKASnwY1SBMZrvGPeqn7jQNYLH2IadZa1RH/Jr+G
	FllI3Gz3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHMYe-0005tu-Ru; Thu, 26 Mar 2020 07:04:04 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHMYb-0005ta-AH
 for linux-riscv@lists.infradead.org; Thu, 26 Mar 2020 07:04:02 +0000
Received: by mail-wr1-x442.google.com with SMTP id j17so6306010wru.13
 for <linux-riscv@lists.infradead.org>; Thu, 26 Mar 2020 00:04:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OnfX0OE0ma/Av42U9uoiSTKulXAJE+HJ9d0B8OOmxos=;
 b=QXXK46669W6vE9wVHhEA66Ox9m5ddadnJ2mSRmkcSCFaPr98OUaojd6Y5FUjv4ZSs+
 GzhWBIx0gwve6woafwhvjawtw7n9AFML7j3z6JbtbtPBE8Xn6M+nrMN+u7IQviIgm99v
 ZeNkgwCkf/0ukl7C7JWAB2CMHSogz5wFn7Ugpva/56qL+KUD9HIKLxHNJKoT6McMhT0W
 euVVaCDann0vTlj7NN6j9HiADFzmrsAlCBPxCHHrBKQs/SJYyKmKGb5Xr/DLwLip+CR2
 gp/nUZFjNs3EZoBbmy4hBuF5em/QCjxSbjM3BgYHpW9+lTGJtKv1hZc4vS+77Q+c4ysy
 MFPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OnfX0OE0ma/Av42U9uoiSTKulXAJE+HJ9d0B8OOmxos=;
 b=eoM7BLJG/+eG/dY7POhsCEIa2UVPH58RvkQ+SnWgJqt1XeImTftt3DGaUs6t2SHMHD
 8VnE0QPjdncXvHUO5K07fFHId6C1GV5YtXkootlo3pDzRTm7AnuCZH0Hjd/C5Wm4X1Pu
 2K6lpGYRoRF0qTxpp7/tw79iKyAZct2yCidnnKfyVYYhUH9buoBsaLFYxGxbnyjxsRvd
 zdOqoRoYP5eDjo8UUfBYll1ztPV7g0MRz23jOZ0EgWd03pqLow9fqOVzWCYWAPXEEncu
 +OPfBOXyataxIPgtDtgJtiES5XmJGtbJvQpTJKmp7cms28B26uBdrTS2Dkuw048gdGHy
 z9fA==
X-Gm-Message-State: ANhLgQ2wmZNaUlPniRjDgyUdK5aqaeZdpUy2X4eH8EBh4o1J26iUwZG6
 N6+g9fNzsHwpG/un5KHAWRcR1IOZMDME73OB0VrxYA==
X-Google-Smtp-Source: ADFU+vvmAe5q2S2uktbITom5JQ9VBVLvh1KAt20YhWxpacdHL4eK/daDkLZcSd9w2y56WpFTbk1b6CJ9SZ717v2JK/0=
X-Received: by 2002:adf:f3c5:: with SMTP id g5mr7627562wrp.230.1585206239889; 
 Thu, 26 Mar 2020 00:03:59 -0700 (PDT)
MIME-Version: 1.0
References: <20200322110028.18279-1-alex@ghiti.fr>
 <20200322110028.18279-7-alex@ghiti.fr>
In-Reply-To: <20200322110028.18279-7-alex@ghiti.fr>
From: Anup Patel <anup@brainfault.org>
Date: Thu, 26 Mar 2020 12:33:48 +0530
Message-ID: <CAAhSdy317iJy4u2cXpN7pYzAZazSGKasm86JYBVz9MMn3uZA4g@mail.gmail.com>
Subject: Re: [RFC PATCH 6/7] dt-bindings: riscv: Remove "riscv, svXX" property
 from device-tree
To: Alexandre Ghiti <alex@ghiti.fr>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_000401_356222_E2E44049 
X-CRM114-Status: GOOD (  12.72  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Zong Li <zong.li@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>, Christoph Hellwig <hch@lst.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

+Device tree mailing list

On Sun, Mar 22, 2020 at 4:36 PM Alexandre Ghiti <alex@ghiti.fr> wrote:
>
> This property can not be used before virtual memory is set up
> and then the  distinction between sv39 and sv48 is done at runtime
> using SATP csr property: this property is now useless, so remove it.
>
> Signed-off-by: Alexandre Ghiti <alex@ghiti.fr>
> ---
>  Documentation/devicetree/bindings/riscv/cpus.yaml | 13 -------------
>  1 file changed, 13 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/riscv/cpus.yaml b/Documentation/devicetree/bindings/riscv/cpus.yaml
> index 04819ad379c2..12baabbac213 100644
> --- a/Documentation/devicetree/bindings/riscv/cpus.yaml
> +++ b/Documentation/devicetree/bindings/riscv/cpus.yaml
> @@ -39,19 +39,6 @@ properties:
>        Identifies that the hart uses the RISC-V instruction set
>        and identifies the type of the hart.
>
> -  mmu-type:
> -    allOf:
> -      - $ref: "/schemas/types.yaml#/definitions/string"
> -      - enum:
> -          - riscv,sv32
> -          - riscv,sv39
> -          - riscv,sv48
> -    description:
> -      Identifies the MMU address translation mode used on this
> -      hart.  These values originate from the RISC-V Privileged
> -      Specification document, available from
> -      https://riscv.org/specifications/
> -
>    riscv,isa:
>      allOf:
>        - $ref: "/schemas/types.yaml#/definitions/string"
> --
> 2.20.1
>

Looks good to me.

Reviewed-by: Anup Patel <anup@brainfault.org>

Regards,
Anup

