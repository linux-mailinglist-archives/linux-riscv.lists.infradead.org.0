Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7A851D02BA
	for <lists+linux-riscv@lfdr.de>; Wed, 13 May 2020 01:00:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=ANYA6Uqt8JmQsCZkIHeMhChyGR2ABYbN7ab10n0Cyr8=; b=p7tYJtFuJZPMi+
	RtQuf51p/qJ66S1wh3j0HbpXx8xsjBWdujgZtsdv2U7+MVXWAGpgoq1WRUADELcqEpOon5rn48os0
	ofzkgthazYnEZIk8Udzp6ulx4/EXYOzcx2QeLp8V2QfeTU/o9saeEqsIEtdBsqgyYcAUsrBzus1mM
	HHh8INgcZkXCMo9VlORS427ncZUzgUGUnPWObbuRp40geAXu7Sgawspr5/K9NgqDbOKNcYkYLTXly
	NMXzPis2iM5WQSmbqTtcN2d39O/6DX0lwkw5JUVnXVx9HjkoSI3lqTV/Wjn0GcsA84uF0Z7XsQr8/
	r9Tccui7fZLe289Z7hqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYdt0-0004eZ-U9; Tue, 12 May 2020 23:00:30 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYdsx-0004e2-97
 for linux-riscv@lists.infradead.org; Tue, 12 May 2020 23:00:28 +0000
Received: by mail-pg1-x543.google.com with SMTP id t11so6877945pgg.2
 for <linux-riscv@lists.infradead.org>; Tue, 12 May 2020 16:00:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=ANYA6Uqt8JmQsCZkIHeMhChyGR2ABYbN7ab10n0Cyr8=;
 b=eqwTzxzfiHOX9idt3KO/0v/oXs46V6+ltH8+ODxDgE0xTtbWLhrQqjj/I4MLeTo7qx
 XH01gBCpb1wq6pkrBgTdUvNaHUet6KIGOrw+El7Q0VATiiu5Hm3ud0zB9mQ6vWmG+TXj
 lPrFz2yeuuqPPDExkB4Ui+7wK2wO1wcIk1DCnfKN+v7JH7HpAkPwVg2eg1udvimBywzs
 HMWSz5VlN5LaHs9s+FDqffjRlIrM1FDVkvPKUQxik3z9ZLS3LnM/OzYDTa+1rOwxB58H
 aJ7Nm9BiiVb+HxaLiOGxmNB5rkCNad2b2Bn7VaGNst1546ZG/wZIGmwNZ7PYKNZh5IhU
 pxBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=ANYA6Uqt8JmQsCZkIHeMhChyGR2ABYbN7ab10n0Cyr8=;
 b=P13tIDqSps4RFD4ItoQYROoa187r2SdbiGAg8YP9AhlT2XzuAimz51k9lWcypMkITi
 OUeeM4L4skrtZQCjZnCmYtN8d9Vo+kFU4BWrb95gBUV/hRjEMkwWwIp6PqFrBXGDQRfn
 4Li9VuV32XdlKM5MwmpjYhL/tuvyL2ie8PDO5w5MYz5R35AHscEte9+I4TpINqBYRwrg
 bV1DYmQcmeqksWl0udHei76q9kQFJqu0kNk94bn9gzILRjJjrVBhuNOJeLqpwP/XdK0K
 R9FlfUjKFKSbGv0+9RGgg5qttIfwQtiWJNJPy57ZFrphGSaJQJBg5rhkN6K8z6HlmOCR
 gKQA==
X-Gm-Message-State: AGi0Pubq6omqIIKVSw/O6sIIcbRMlfCScFz1CkOmSXGscWgky7M6UInN
 0WKhjTPsgo03Hyj5WfItF1Kk4Q==
X-Google-Smtp-Source: APiQypKpItiCTq+LL3cwMHlGAk6EceSJc41DnTPbVWgGyBzY+wmrmmIeI/2RQL5jF31HJQFyTVmDkA==
X-Received: by 2002:a63:d742:: with SMTP id w2mr21237526pgi.180.1589324425601; 
 Tue, 12 May 2020 16:00:25 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net.
 [76.210.143.223])
 by smtp.gmail.com with ESMTPSA id b9sm12707480pfp.12.2020.05.12.16.00.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 May 2020 16:00:23 -0700 (PDT)
Date: Tue, 12 May 2020 16:00:23 -0700 (PDT)
X-Google-Original-Date: Tue, 12 May 2020 14:10:27 PDT (-0700)
Subject: Re: [PATCH v1 1/1] tty: serial: add missing spin_lock_init for SiFive
 serial console
In-Reply-To: <1589019852-21505-2-git-send-email-sagar.kadam@sifive.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: sagar.kadam@sifive.com, Greg KH <gregkh@linuxfoundation.org>
Message-ID: <mhng-b2e9c16c-ee06-4c78-800d-a7725d6c74a3@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_160027_368541_F7DB7317 
X-CRM114-Status: GOOD (  16.26  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: aou@eecs.berkeley.edu, Anup Patel <Anup.Patel@wdc.com>,
 linux-kernel@vger.kernel.org, Atish Patra <Atish.Patra@wdc.com>,
 sagar.kadam@sifive.com, linux-serial@vger.kernel.org,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sat, 09 May 2020 03:24:12 PDT (-0700), sagar.kadam@sifive.com wrote:
> An uninitialised spin lock for sifive serial console raises a bad
> magic spin_lock error as reported and discussed here [1].
> Initialising the spin lock resolves the issue.
>
> The fix is tested on HiFive Unleashed A00 board with Linux 5.7-rc4
> and OpenSBI v0.7
>
> [1] https://lore.kernel.org/linux-riscv/b9fe49483a903f404e7acc15a6efbef756db28ae.camel@wdc.com
>
> Fixes: 45c054d0815b ("tty: serial: add driver for the SiFive UART")
> Reported-by: Atish Patra <Atish.Patra@wdc.com>
> Signed-off-by: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
> ---
>  drivers/tty/serial/sifive.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/tty/serial/sifive.c b/drivers/tty/serial/sifive.c
> index 13eadcb..0b5110d 100644
> --- a/drivers/tty/serial/sifive.c
> +++ b/drivers/tty/serial/sifive.c
> @@ -883,6 +883,7 @@ console_initcall(sifive_console_init);
>
>  static void __ssp_add_console_port(struct sifive_serial_port *ssp)
>  {
> +	spin_lock_init(&ssp->port.lock);
>  	sifive_serial_console_ports[ssp->port.line] = ssp;
>  }

Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>
Acked-by: Palmer Dabbelt <palmerdabbelt@google.com>

I'm assuming it's going in through Greg's tree.

Thanks!

