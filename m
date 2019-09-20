Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 443F1B90A9
	for <lists+linux-riscv@lfdr.de>; Fri, 20 Sep 2019 15:29:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x3odJlCkpLC1Wvqs5Dgrf5MMAENnGqRJjqQFnwFC6Z8=; b=LNlTo7Hy6w3fMc
	z+0QNG1k6hpeiKW3CmPEbosceRjPGlgtGFY+uPsIOVWIPm2Kw6mLJfylrKh5RUQXl3i0i8jarl7eI
	925M3dPlEqqQh50D6P97w7/8FE+Yk70rdwerxmi/1a8UOIssZcWhJkpF4usFnlaFO1wOB6CiPYIhv
	8SD+2AzG7X4nzpoBxmXZ2eQkaK93a+3l1uBBCbHFoKA6jZ5Z9+FuKG0I4IrHvKLJ2wt1tG7T1wHHo
	MwIj+yDiUDbkEPrD7xOjDQCDV1yr2jXmbN3W5HqFOkGIqoY23BcF2YSeSbBufP2X/jqLlJ0oocPpS
	RNkr2sBcPhWPcJlWTcsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBIy9-0007Kw-3G; Fri, 20 Sep 2019 13:29:05 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBIy5-0007K6-Od
 for linux-riscv@lists.infradead.org; Fri, 20 Sep 2019 13:29:03 +0000
Received: by mail-ot1-x343.google.com with SMTP id s22so6177316otr.6
 for <linux-riscv@lists.infradead.org>; Fri, 20 Sep 2019 06:29:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=e1EFKSI2taSOuRAW19A6gM/LOvRhsiSAjxhmMibFXx8=;
 b=AF1H2hPLVVGNc+OiNsqAjyKg8k+pL+BHKPOnn4mgK/uS3ttkHlL+v9rg5rnlbRuzYW
 6GAFAllYHLe4G5GMp+MxPWpyWWpZvDcLb6yq6VydzUIE+r0SyCY13Z0SkkqjPor5odeg
 nE4WRem05gKBGGA/aESGTm9OV2DQufZk18wN6ZD5n5mNeWGSxntxtCtOppZMOVNPotgZ
 Nvbjg/AkYxhuAL7guoueUUHYygUNzmv4uKHDLNgggyvnbdDVczwqeUMRUv0D80/ndspo
 At1eaFi2Ci/Nd4QodoPs9JSqKQ3s3qjiTbKptc3Ur04E7qR5kwGHLS8VB9novgt4gId6
 FB/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=e1EFKSI2taSOuRAW19A6gM/LOvRhsiSAjxhmMibFXx8=;
 b=rV0Prx4bFsnJzFxQQpSz3PpJ5dqKk5x4AkVcOMi+8Xpc+at0FhBgMspvwFPnk6WO0y
 veq/ipIY1pBP43hQYclJIRuRdJ1IC6hx1UyMp9EnTTJfmzwCiDR2e1nu1AKQDC6fEvTv
 WyqsDwGWnJbTVnRxuqt0XCDt1nVO87lcMgqswpWTZYO3/NcBqhVhq9Eqf10KAqprYSmQ
 FljtE0gg4ygUBjHKp2PlW8NxF5pcSGw7m9FkWcEtLk8WcGv7h/x5itWtZ4Ymco2PUPmL
 KW8JH5lC+8KY/zR0whqMxYHliSePh8ZYYzj7LK89KdXOoXrPc6MFrzZG909pAC0UYViP
 QSiQ==
X-Gm-Message-State: APjAAAV4OXpERQ+WWRes+0M+0woSXzbXYaMmgRrcz2xHlNh4xAJxtApd
 +89AXNRvs9XA3wvwtUch1wAJMpQASRcg7+DZNhmGvQ==
X-Google-Smtp-Source: APXvYqyPEEVYGqYC4zvTbO/6W6S45SlzHK0YpaI9OdY6IVv6zKDyKISjMw/3lHYqjdiirbdck92GKcdyAa/1P07TNGc=
X-Received: by 2002:a9d:4e1e:: with SMTP id p30mr11740947otf.224.1568986140111; 
 Fri, 20 Sep 2019 06:29:00 -0700 (PDT)
MIME-Version: 1.0
References: <3c0eb4e9-ee21-d07b-ad16-735b7dc06051@bluespec.com>
 <mhng-df6c7aad-d4fd-4c44-96c8-bf63465e0c97@palmer-si-x1c4>
 <20190916223323.07664bc2@why>
 <alpine.DEB.2.21.9999.1909170525170.30255@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.1909170525170.30255@viisi.sifive.com>
From: David Abdurachmanov <david.abdurachmanov@sifive.com>
Date: Fri, 20 Sep 2019 16:28:48 +0300
Message-ID: <CAPSAq_y8x7AxU1jA25_9DRtHnup1w6AZTjgj-iQ1F3n-FH3+DA@mail.gmail.com>
Subject: Re: [PATCH] irqchip/sifive-plic: add irq_mask and irq_unmask
To: Paul Walmsley <paul.walmsley@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_062901_866769_66A554F3 
X-CRM114-Status: UNSURE (   8.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: jason@lakedaemon.net, Marc Zyngier <maz@kernel.org>,
 Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org,
 Darius Rad <darius@bluespec.com>, linux-riscv@lists.infradead.org,
 tglx@linutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Sep 17, 2019 at 3:26 PM Paul Walmsley <paul.walmsley@sifive.com> wrote:
>
>
> Just tested this on the SiFive HiFive Unleashed.  Seems to work OK;
> however I did not stress-test it.
>
> Tested-by: Paul Walmsley <paul.walmsley@sifive.com> # HiFive Unleashed
>
>
> - Paul
>
>
> # !cat
> cat /proc/interrupts
>            CPU0       CPU1       CPU2       CPU3
>   1:          0          0          0          0  SiFive PLIC   5  10011000.serial
>   3:          0          0          0          0  SiFive PLIC  51  10040000.spi
>   4:       6266          0          0          0  SiFive PLIC   4  10010000.serial
>   5:        102          0          0          0  SiFive PLIC   6  10050000.spi
>   6:         37          0          0          0  SiFive PLIC  53  eth0
> IPI0:      1134      21128       9024     220261  Rescheduling interrupts
> IPI1:        10        143         18          7  Function call interrupts
> IPI2:         0          0          0          0  CPU stop interrupts
> #

I have applied the patch on top of 5.2.9 kernel and tried to stress it
with stress-ng interrupt stressors for 2:30+ hours.

# cat /proc/interrupts
           CPU0       CPU1       CPU2       CPU3
  1:          0          0          0          0  SiFive PLIC   5
10011000.serial
  3:          0          0          0          0  SiFive PLIC  51  10040000.spi
  4:      34240          0          0          0  SiFive PLIC   4
10010000.serial
  5:        102          0          0          0  SiFive PLIC   6  10050000.spi
  6:          0          0          0          0  SiFive PLIC  53  eth0
  7:          0          0          0          0  SiFive PLIC  32
microsemi-pcie
IPI0:  32013933   28068736   29345256   23346339  Rescheduling interrupts
IPI1:     78514      78586      63144     100317  Function call interrupts
IPI2:         0          0          0          0  CPU stop interrupts

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
