Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E96286D72
	for <lists+linux-riscv@lfdr.de>; Fri,  9 Aug 2019 00:53:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xzbmcCM3GZIE64jU+ltysWSM+1Zl7cZrIi1NtpwfQPw=; b=Exw1vEcVzCXisk
	FqWIZ5tgUro89cu/Wssmx1MklJsLjD2x92v53XedGbC+AZeoEUnuP6QFZWTup4laLoSr8tVNZd8/M
	p/EeypaUjzsw/CUorepfFlyv/ArviuvbFwZ1KyTUMaY4G8qzhn7bEXG33K9o2ZQw/vEO46S4zhjcA
	UHhFGVUMaFCyegWYT5QnJ1EMF9Qb2vHXFvW8UNt7TtD0qxTmiSmKAy75mgrnKEp+qaLoZof0VIMYw
	1+3jYIylNbK7blltPawNyoan+2WNHBtJHVqUMCEUGYIaW0BZdKA5uW25WCCjj+YzaNI6oE1FRJ9OZ
	I0LSPEAC7jlNzKcvGHWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvrHT-0006lr-HS; Thu, 08 Aug 2019 22:53:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvrHQ-0006lW-OK
 for linux-riscv@lists.infradead.org; Thu, 08 Aug 2019 22:53:09 +0000
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com
 [209.85.222.169])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F0DBA2173C
 for <linux-riscv@lists.infradead.org>; Thu,  8 Aug 2019 22:53:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565304788;
 bh=UDl7FH9qccKh/jy2kxm+7vEFoGqeFPVijVmq33g23+c=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=Bi/78M6qbFJlefcTvFTsTLezgq2DnCTUQYOR6vyIORZBWg4CQ0BCw3oe4UdF3d/ow
 SomPXm6HdaGZwrFV01uftjCqpntfXpu5VmE+ISAGGudtXv163rgX/lAbZ+Ckwlb1B8
 scfMvmr3VG9osL7Xd195FCJF1Bu6jLcLX+xBWUjY=
Received: by mail-qk1-f169.google.com with SMTP id d10so5476336qko.8
 for <linux-riscv@lists.infradead.org>; Thu, 08 Aug 2019 15:53:07 -0700 (PDT)
X-Gm-Message-State: APjAAAXGI6/So9yqSD/YF9sgl58pLNfjpyxkAljSIHsC9TpUrjlF/wNc
 lGht9VF2JIxqSrb8sYUHHKCXivKgDwR6+DX4Cw==
X-Google-Smtp-Source: APXvYqyU/kTW6gdeVEMYafTbUnx/nIzUaj84Avqg8qc37wlRfsJNN1u8HEG+RqvAQ2Z+Dk87rGVIawEEewvI80/Z1T8=
X-Received: by 2002:a37:d8f:: with SMTP id 137mr8830673qkn.254.1565304787197; 
 Thu, 08 Aug 2019 15:53:07 -0700 (PDT)
MIME-Version: 1.0
References: <alpine.DEB.2.21.9999.1908081545190.15649@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.1908081545190.15649@viisi.sifive.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Thu, 8 Aug 2019 16:52:56 -0600
X-Gmail-Original-Message-ID: <CAL_JsqK5ms_65sux=Xi=beyu-vD9Qh-ziTpvpLz-qrtwOaLoEw@mail.gmail.com>
Message-ID: <CAL_JsqK5ms_65sux=Xi=beyu-vD9Qh-ziTpvpLz-qrtwOaLoEw@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: riscv: fix the schema compatible string for
 the HiFive Unleashed board
To: Paul Walmsley <paul.walmsley@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_155308_815354_B2A3D0B8 
X-CRM114-Status: GOOD (  11.99  )
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

On Thu, Aug 8, 2019 at 4:46 PM Paul Walmsley <paul.walmsley@sifive.com> wrote:
>
>
> The YAML binding document for SiFive boards has an incorrect
> compatible string for the HiFive Unleashed board.  Change it to match
> the name of the board on the SiFive web site:
>
>    https://www.sifive.com/boards/hifive-unleashed
>
> which also matches the contents of the board DT data file:
>
>    https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts#n13
>
> Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
> ---
>  Documentation/devicetree/bindings/riscv/sifive.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
