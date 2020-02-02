Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B47BB14FCF1
	for <lists+linux-riscv@lfdr.de>; Sun,  2 Feb 2020 12:48:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Op0zfe58XdVsuLFDv+kV1nCs9niSTB0gzCPSk7DxSPs=; b=TeyGyZsRvXquVi+P+XF7Aungf
	BxiVJ1d25lxGhh/VrFg3nmZoGiPTaHzngXqzF61j9SixWsTvo9krp+ajlVohoLEukBShGUW2ZNea1
	r5ZVbTUKoh5wQf/R0imq0mgpxlj/IkY7q20smjoiIS3qHB6Y+ce02Vnz4V/4xE78cD6Vy1FvIB6rr
	5FXFVXcttiqxDxrjsUWSTvCL6r4EnrMxQyD+xAgQUoLkWmXmihNye3xNfWArJww6UrOgVewNbURFX
	+YuzjLNT3mlqJfm9ytkWq+aHxBNVzxxd6TsRcPVtGX79aWOdgzX2KKG1rxrFkIJPoMKNaLCmXlfmZ
	0RGI4LyhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyDk0-0002Gb-1v; Sun, 02 Feb 2020 11:48:40 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyDjw-0002GC-LI
 for linux-riscv@lists.infradead.org; Sun, 02 Feb 2020 11:48:38 +0000
Received: by mail-wm1-x341.google.com with SMTP id p17so13813625wma.1
 for <linux-riscv@lists.infradead.org>; Sun, 02 Feb 2020 03:48:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=atishpatra.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Op0zfe58XdVsuLFDv+kV1nCs9niSTB0gzCPSk7DxSPs=;
 b=UGxus0UvDEEJ26RDo6DrWOA2vo37glkXXFSFf+GTlBeShN0snPnY61EzyFpFflbcP6
 1AgXPK07wWXJXS9BGhu9nzE6uaoHggg4jwSLJczzAxLPO33lbgqV07O3Z0jvovl7o3aG
 wfZukZU1s67yckW3jLJ8T1HiFu9IWrptgcPvcztYI2DIypbNNs7/Khp19P0WrNiaFJ+i
 NaK3kdgK6HEBrD0SPfcD98NTFP75FyC/Y2O6ctpqZmqsJZQmYs+BA4mBDxns/msWKpmy
 CqIsb3Ge7I9O09tHPaJpE6Xy7g4dD7HbrfcfSP+nT7X6J9aOXVcCcyVxatvywF3/UN6N
 vpHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Op0zfe58XdVsuLFDv+kV1nCs9niSTB0gzCPSk7DxSPs=;
 b=DXqnl7fSIMfmEWN88/i+HjnwJSiPu5yuqCCsa/VpUWvkcqq6zWg2yU8kUSh+ne82U/
 qUguUcHYk38/j995nXnpWAREXrazeCnuu2i5+dIUj8kytLDotRgTsa4RR8pcXp9xBY4l
 ogkfFD1MSC7WnS2QuTk1ejUI0gFNbltf2n35Z2RLrRemBeX0uZvp04kZ7c0Tv65q06Or
 BGGJRcgPsR5V8/B7mGmOfyFXpYYAfZHQtsM0hxdPxo8nB26a0SnGrZSpghMb0LSPzXRF
 /HiWRrVw+AR5pni0fLI8UDITExshl60CZugUJqNrBC9UcvXXUwavV0Y5cUsFSbVCmKzk
 z7rA==
X-Gm-Message-State: APjAAAWP5QYNh9bVjd6WZJ4uhLk2xax2wstLXlFxbB1092GdRlrWgJZ4
 PD7yB0g9ZiCIEv5J4BYXO7yP94LeX+YQEXaekx7h
X-Google-Smtp-Source: APXvYqxq7L4O+L8Zw+nM1sKEx/N3GRXkz3TOVixpfJQrX2G1q0+48Y2iIlYhn2cIHDmMG2e+GnhI1z0A0QWYcaZav2w=
X-Received: by 2002:a05:600c:2113:: with SMTP id
 u19mr22862304wml.78.1580644110192; 
 Sun, 02 Feb 2020 03:48:30 -0800 (PST)
MIME-Version: 1.0
References: <20200202110202.124048-1-anup.patel@wdc.com>
In-Reply-To: <20200202110202.124048-1-anup.patel@wdc.com>
From: Atish Patra <atishp@atishpatra.org>
Date: Sun, 2 Feb 2020 03:48:18 -0800
Message-ID: <CAOnJCU+_CnH6XcXbVrf4LCg3s830n6x6OyWckzoBC-kG2yFpwQ@mail.gmail.com>
Subject: Re: [PATCH] RISC-V: Don't enable all interrupts in trap_init()
To: Anup Patel <anup.patel@wdc.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200202_034836_723424_DD0DC343 
X-CRM114-Status: GOOD (  14.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Damien Le Moal <damien.lemoal@wdc.com>, Anup Patel <anup@brainfault.org>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 stable@vger.kernel.org, Atish Patra <atish.patra@wdc.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 linux-riscv <linux-riscv@lists.infradead.org>, Christoph Hellwig <hch@lst.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sun, Feb 2, 2020 at 3:06 AM Anup Patel <anup.patel@wdc.com> wrote:
>
> Historically, we have been enabling all interrupts for each
> HART in trap_init(). Ideally, we should only enable M-mode
> interrupts for M-mode kernel and S-mode interrupts for S-mode
> kernel in trap_init().
>
> Currently, we get suprious S-mode interrupts on Kendryte K210
> board running M-mode NO-MMU kernel because we are enabling all
> interrupts in trap_init(). To fix this, we only enable software
> and external interrupt in trap_init(). In future, trap_init()
> will only enable software interrupt and PLIC driver will enable
> external interrupt using CPU notifiers.
>
> Cc: stable@vger.kernel.org
> Fixes: 76d2a0493a17 ("RISC-V: Init and Halt Code)
> Signed-off-by: Anup Patel <anup.patel@wdc.com>
> ---
>  arch/riscv/kernel/traps.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/arch/riscv/kernel/traps.c b/arch/riscv/kernel/traps.c
> index f4cad5163bf2..ffb3d94bf0cc 100644
> --- a/arch/riscv/kernel/traps.c
> +++ b/arch/riscv/kernel/traps.c
> @@ -156,6 +156,6 @@ void __init trap_init(void)
>         csr_write(CSR_SCRATCH, 0);
>         /* Set the exception vector address */
>         csr_write(CSR_TVEC, &handle_exception);
> -       /* Enable all interrupts */
> -       csr_write(CSR_IE, -1);
> +       /* Enable interrupts */
> +       csr_write(CSR_IE, IE_SIE | IE_EIE);
>  }
> --
> 2.17.1
>
>

Looks good.
Reviewed-by: Atish Patra <atish.patra@wdc.com>
-- 
Regards,
Atish

