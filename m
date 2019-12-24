Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCC6012A2A3
	for <lists+linux-riscv@lfdr.de>; Tue, 24 Dec 2019 15:54:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rKXMsBZzTjBiY4xqTse9jf34bWu2XGhjlAdLjg/AdEo=; b=ML/zrIZkh7kJrFGCpTkprEk/I
	MrpLx4VBzY+OsZ3Ksbpy1e0imza8sAH9X0Dx1meKRq2oyLY0jeBq12TXIkmyP7TvVR54K0BP51nMk
	Noae4QAAuLUSrB6I4KyePfA6AKmzOlV97qdVBOj4Fzq3BfcpLesEOaArMXlnHi5HsYKKq2BH1pZrb
	PtdQT5/TeKPWV06+UjUZ+yAMnOT4vJ3e8pY+QgOEL9ZMfcSnF/5aOJFnG0ipzY47HNR7oc61RoK3r
	UGN+EyZ2FOf1uO5Eb/aHgPTrFg8g8iz1AQE3ijm0GjkdPlML45lR/w2QGw9BloMyDFXSatU6uPjsl
	chmDWgtaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijlaK-0001oA-2H; Tue, 24 Dec 2019 14:54:56 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijlaH-0001np-3r
 for linux-riscv@lists.infradead.org; Tue, 24 Dec 2019 14:54:54 +0000
Received: by mail-ot1-x344.google.com with SMTP id r27so26598202otc.8
 for <linux-riscv@lists.infradead.org>; Tue, 24 Dec 2019 06:54:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rKXMsBZzTjBiY4xqTse9jf34bWu2XGhjlAdLjg/AdEo=;
 b=p82ZZWEs5uoKtZ2ulCGv6RcPtJl1Q+tnsTqCnba1csdFYXYXs3VIfgWNkUM24bT514
 Q6l96epCfqAt+EM6IBdioMmXPK8j6UlbUCWJ5ydR4hPSjRhb2auF3MwPyZepQlRE5bX4
 jykuzckYm5LbELffi6A7VBU3ENQrNfChvcpKLX4/8qbjQtWkOF12kCUCFftG+7sL3ANo
 esKA9Y1Vj59u+kZCkxIZUhgh8njIFA2a6GgAQayVXrr8f2/gKvZG6Ym8RC7MMKckv4H0
 Jq7OPDUV+mWb5SYSPb39jbAWqoGuZAl51MLkWKjrsqKgMHpK8MDe8Tm7OmFOxOm1rv3b
 w27g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rKXMsBZzTjBiY4xqTse9jf34bWu2XGhjlAdLjg/AdEo=;
 b=C1WBns1lTtvYHWrMtFD6CbR60bNJpJKWv8nPIWBdBUE4YEELU8xAAnPPNpoVEJOGF+
 T+4HvYAcDCyTnVJtKwTAokhlMpV9gM8C2c+ZL/kKYBS4YxFjY80RM+8F6S7c6SdlvWqQ
 e0W4NGCl2EcqSfpZjSKewBCO9/2xQdeKpDCAo48OypstI7LSFsI+OIO19TYgJt16jL2w
 RMPt5ETHNGClp9SPe23Y3V6TXa0YWy7ZJuopb1U2ZeyuGbrGjsriA8cOqZXOQYP6U1fN
 Kz18UfyG9hpdmh5eZsIT0cYigJcRgVADG+jrGZgDlW7CSVDNs2Fjw2zlegMdcgCrQre6
 bgEw==
X-Gm-Message-State: APjAAAU6+LgtRNXMLrsmLOfKiGdJODLZjBsdZiqFpaPTLgK6X43stiEA
 TYXYGGWa4zNbYPgTt72H+ob53v+BbopZVrmEVag=
X-Google-Smtp-Source: APXvYqwOBBpgqa2v4RJjsIhOau4EF9dgbekxvc53oynK5l738OKHSnOP/gP7PtnJl8uAW482KYIqRa78TPm5lXz277s=
X-Received: by 2002:a9d:5784:: with SMTP id q4mr20760695oth.278.1577199291744; 
 Tue, 24 Dec 2019 06:54:51 -0800 (PST)
MIME-Version: 1.0
References: <CAPgEAj6edQiTtXkau+E5hSb=RcQ7vjv=kTN0yAmgbOYXEx0+Dw@mail.gmail.com>
In-Reply-To: <CAPgEAj6edQiTtXkau+E5hSb=RcQ7vjv=kTN0yAmgbOYXEx0+Dw@mail.gmail.com>
From: Charles Papon <charles.papon.90@gmail.com>
Date: Tue, 24 Dec 2019 15:54:41 +0100
Message-ID: <CAMabmMLGfnG0cD6ra7pJxcGsKtsihgEixYv+7ArgfukQMOZ_kQ@mail.gmail.com>
Subject: Re: Current options for Linux on RISC-V?
To: Drew Fustini <drew@beagleboard.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191224_065453_158025_B106E821 
X-CRM114-Status: GOOD (  10.42  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (charles.papon.90[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (charles.papon.90[at]gmail.com)
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
Cc: linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi,

Recently, there is also SaxonSoc, also based on VexRiscv, on Artix7 and ECP5 :
https://github.com/SpinalHDL/SaxonSoc/tree/dev/bsp/Arty7Linux
https://github.com/SpinalHDL/SaxonSoc/tree/dev/bsp/Ulx3sLinuxUboot

u-boot + sdcard are used for the bootloading sequence.

Have fun in CCC ^^

Charles

On Tue, Dec 24, 2019 at 2:27 PM Drew Fustini <drew@beagleboard.org> wrote:
>
> Hello, I'm giving a talk about Linux, Open Source Hardware and RISC-V
> this Sunday at the Chaos Communication Congress (36c3) in Germany [1].
>
> I want to make sure I am up-to-date about the current ways that people
> could run Linux on RISC-V:
>
> - QEMU on x86 (Fedora / Debian)
> - SiFive Freedom Unleashed board (unfortunately expensive)
> - Kendryte K210 (NOMMU, limited SRAM, I am not sure how to reproduce
> the LPC demo) [2]
> - RISC-V soft core on Xilinix or Altera FPGA with proprietary toolchain
> - LiteX-On-Linux with VexRIscV on Lattice ECP5 FPGA with and open
> source tools (trellis, yosys, nextpnr)
> - Microchip/MicroSemi PolarFire SoC (stil coming soon?)
> - Future: OpenHW Group and NXP making RISC-V iMX-style SoC?
>
> Any other options that I missed?
>
> Thank you,
> Drew
>
> [1] https://fahrplan.events.ccc.de/congress/2019/Fahrplan/events/10549.html
> [2] https://youtu.be/ycG592N9EMA?t=10394
>

