Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2F3977F9B
	for <lists+linux-riscv@lfdr.de>; Sun, 28 Jul 2019 15:30:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VeGwtQNPN7sKEzaC8H8e1jhiwvMzJnWLGpqkGAmQaU0=; b=OkjJHDioixSY7Q
	yrzHl0DraVkyc+drzx2a01g6nmla3oWtK3BAqdYO/Ie/UTK3gaIqFUlXnq7Kxe6pSdvXGHppItVYh
	Eoh1D4iCR/2AQEkRu5oCCCCCqKtwvX4eqFoTJg6yRgzQWgps0jgUC5dNtxjWt9XLZd7ggiml6f+Mm
	D4Bap1XTxiqTAecO7kxSFB/uOkfCR0UcbaZomJdWQg6AxvQBF3R5Sm9S8Xc+j9W5yUnsZ4jKgY8/Y
	I+l5uPZblOKL+zdxLCbywSYT1vHxTnLozE0MmIXVHh7MK1Y6jUREgHQnyGKsSafxHGbe3xP9CWzAx
	2vvnTunhUhLyWeoYDzGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrjFQ-00083L-FC; Sun, 28 Jul 2019 13:30:00 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrjFM-00082k-3s
 for linux-riscv@lists.infradead.org; Sun, 28 Jul 2019 13:29:57 +0000
Received: by mail-ed1-x543.google.com with SMTP id p15so57007584eds.8
 for <linux-riscv@lists.infradead.org>; Sun, 28 Jul 2019 06:29:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mvXJ3/c4rpFRGGh2Wow0lkZGjKN4V1iCfYC7Oigz+iA=;
 b=WBszeDWnp4ZcGvcJBBrX+sXfsbbQGBMwyvnvu5/GlXW+VqkFGoJ8GdKapq1oALPyLs
 G13dv5CGaW0XI9qGkQjgfORNTLQSkyLQBRt4yga/lHpBKVCHdP0ISR+gjVgNVHf7jz/J
 1FOV6JAnaQz1URcB+qsDQwlchxqMm5zXThFNYTPPRz97RXNFYqpxpkgOj4bbxWbgu6w9
 k0Oiu87maWJR/CL23+qO++5TWMr7OI5On+em7+hrcB8JfxQEqx3evrr5ovkdhrHXHk58
 ZvD1rxgN9YY2VsQu7k7jHc4IOUtWyDvAgJS2gHt7VV1y7O5ondyGju0TCnndQoRw4g/k
 UDoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mvXJ3/c4rpFRGGh2Wow0lkZGjKN4V1iCfYC7Oigz+iA=;
 b=XuAxlo7bfyG+GNskUhd/JoNiNJ0OltmMJMBSo5rgeRFwdmucY5Y7YZKMQFHMijZAPd
 fvF5bALJVXTtiY0xs6Y3evO63IM8q/g00/LcYBops8zsyVCV5MOqx9i2ylaqgOh5VFyc
 rfQDxuHSApeE68GAm2K/pseGZQLKhQA1Wk5YejQeWOngIl6RGlwk/yoozm/217OwEQ4V
 1s2KVpZsISoGMtFC7bZaVt1UGEfPreFF6ODCB0Gf1VeEWjats4WtGuzE/L8gAS/N0zr2
 mlpa51RMSqkz0mLHNrauZwfPIJ/qCzrF5MtobGAn1qM+o6JajP1vNEzTkCB95nrigwYn
 O0/g==
X-Gm-Message-State: APjAAAWrUv2RCsSdHNljvDUvuIvUHvsFZwqIkDuNqKDFRXwHK07lsE3w
 Fgfm1U0adiaZy7gPmrimhB6/rdrm5nbqLwO7/MptGQqv
X-Google-Smtp-Source: APXvYqzUHdn0K/6jv1Ayf0caTyzE54mDGtV0LNSQdgaxs59ZSKla4UqaBrYnMXVctxpaI0W6SGAuv6R1sbGMKAUdF+Y=
X-Received: by 2002:a50:ad01:: with SMTP id y1mr89286757edc.180.1564320592940; 
 Sun, 28 Jul 2019 06:29:52 -0700 (PDT)
MIME-Version: 1.0
References: <alpine.DEB.2.21.9999.1907251535421.32766@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.1907251535421.32766@viisi.sifive.com>
From: Bin Meng <bmeng.cn@gmail.com>
Date: Sun, 28 Jul 2019 21:29:42 +0800
Message-ID: <CAEUhbmUeAFtmFci78phyLdxTFwh4rfztsMZAy5ekfbmyX1VZeA@mail.gmail.com>
Subject: Re: [PATCH] riscv: defconfig: align RV64 defconfig to the output of
 "make savedefconfig"
To: Paul Walmsley <paul.walmsley@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_062956_181410_3204CD24 
X-CRM114-Status: UNSURE (   8.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bmeng.cn[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-riscv <linux-riscv@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, Jul 26, 2019 at 6:36 AM Paul Walmsley <paul.walmsley@sifive.com> wrote:
>
>
> Align the RV64 defconfig to the output of "make savedefconfig" to
> avoid unnecessary deltas for future defconfig patches.  This patch
> should have no runtime functional impact.
>
> Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
> ---
>  arch/riscv/configs/defconfig | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
>

Reviewed-by: Bin Meng <bmeng.cn@gmail.com>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
