Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 564801221B5
	for <lists+linux-riscv@lfdr.de>; Tue, 17 Dec 2019 02:54:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SlnV9qvnMLCTAEFRF8r07x6ujflDHYlwsIYrVCyjVJg=; b=s9BDmfHP491quLcBdq45jNdRM
	rmKRtVvrQGk09Qw0TuHe75Kr07/4sge5pZsE6EUUr7GU1bPQ8GQPC3aFuylr8zDKSXkDINjeBMVaM
	pnRxx2BaOp2T46yRpontVOJiGjGcEZZhWtjPQf1EZwZ89jCecDk2aRPdXLE6qasPXxwMeDakvTESU
	FBUck9h6ZBPYaMt/MPCOb9gRG7ySo1+TvCoTaBI9V2GU1bfp9KBcYRVIUCFiCnPn0Wx5m72StvUlC
	rsORR79K3bA1X8DY69ih9Ayt5OcvgydQwk4D2j7w+EwW+MHM+jfT+0KAl+tlON2QCugiaVnw/U0YY
	cRR5o7Fsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih24P-0000CV-7g; Tue, 17 Dec 2019 01:54:41 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih24L-0000CC-O3
 for linux-riscv@lists.infradead.org; Tue, 17 Dec 2019 01:54:38 +0000
Received: by mail-io1-xd42.google.com with SMTP id s2so9211252iog.10
 for <linux-riscv@lists.infradead.org>; Mon, 16 Dec 2019 17:54:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=SlnV9qvnMLCTAEFRF8r07x6ujflDHYlwsIYrVCyjVJg=;
 b=fvA+rdpJlAvWZnCSEt72CVd2qcmAk2SL7KECX8NXO2vlF23JzDdDL0yBr7yiIXvOel
 1B1fod8M5+cS0eD29pKgFhqf8nr6M/GgVfjIh23Ns7YMidcs8JvqOXf2rSf9QcX0//05
 i2FJET85F1TIiC5j0sCIDGm/ERoPhyompVAnQWgam5OWDK6Tqxhb3EnyoJ5LwO3DdXgq
 N2BOLCtE3aXLs2tLWjvgJdxcqgCSu7hd1Eur7zdUNc3HsY+ofl7Xxhgeiua58ORAyu1V
 8RWRKtfa6S/mNuCkfSWpOrhnyP7x0r++R6NchhEi0i4b1Og4B6y2MgENDMgm3BTX+R/Z
 JjtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SlnV9qvnMLCTAEFRF8r07x6ujflDHYlwsIYrVCyjVJg=;
 b=i/u4YWPyJ5Ggm9TQSPpSo8mw6NCziJuxCMmyAFMFFs0ZiE0EHgwiWwSYAIAfTuvGbl
 Qy80fs8Im4ds0k7H9N0ypuq5wF0Gcq4DLvWiT1w4hzFYd52WpDqjcEB5Mt3Y8OjZHU2F
 dCIvO8iWwSJhkigyae5xAoIYCAG3SbCZ2nx2xC8DuoAWYSV0czJNy+Bf7QwxyXWZ4eJV
 k+UouFMnrhLzr3tfo7zry1Yuy2QRYjdoKvD9CB/xy4Y6v069pDgXsEM2yCef23my0JWq
 R/51USzIGpLX7gue4vV+xp2zzUFS+Ckf4SSZtNeQ9sU+J3LaJUVWUKny4iQRfTd1IWNx
 QnZg==
X-Gm-Message-State: APjAAAXjJqu7sOYwoe9icu8KVKfBl92NMJdcVKILC2wIn3kBz9fwfZJ0
 woWMlB3UlND+gth3ZTtchPklEXL+1GOYZCPlzBaxIg==
X-Google-Smtp-Source: APXvYqwpxAHjXEyFHWyWPYpZNMiv/knleP1pkVpKJvQ3kGnNs4qYLJFOyTKc5Uor7bFXpY5AKjj+unBC8GWILWYbrw4=
X-Received: by 2002:a5e:da0d:: with SMTP id x13mr1740295ioj.123.1576547676697; 
 Mon, 16 Dec 2019 17:54:36 -0800 (PST)
MIME-Version: 1.0
References: <20191217003057.39300-1-olof@lixom.net>
In-Reply-To: <20191217003057.39300-1-olof@lixom.net>
From: Olof Johansson <olof@lixom.net>
Date: Mon, 16 Dec 2019 17:54:25 -0800
Message-ID: <CAOesGMjw5RaPR+s94RAHtMm9jTGBeqcST+=YMKLxrF9xa+c1MA@mail.gmail.com>
Subject: Re: [PATCH] riscv: export __lshrti3
To: Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_175437_807214_AA0EF7C7 
X-CRM114-Status: UNSURE (   8.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
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
Cc: linux-riscv@lists.infradead.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Dec 16, 2019 at 4:31 PM Olof Johansson <olof@lixom.net> wrote:
>
> ARM64 exports it already, and recently it started showing up as needed
> with allmodconfig.
>
> To keep things building as expected, let's export on riscv as well.
>
> Signed-off-by: Olof Johansson <olof@lixom.net>
> ---
>
> It'd be nice to see this go in through 5.5-rc, since the breakage showed
> up this merge window. It was triggered by ce5c31db3645 ("lib/ubsan:
> don't serialize UBSAN report"), but I think that was just coincidental.

Nevermind, I built the wrong config when I tested this. Need to pick
up some of the generic helpers also. Posting new patch separately.


-Olof



-Olof

