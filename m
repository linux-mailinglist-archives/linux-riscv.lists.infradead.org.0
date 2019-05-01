Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2B5B1037A
	for <lists+linux-riscv@lfdr.de>; Wed,  1 May 2019 02:25:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=RuEKuQmWwJj4tjUylmHtORmZm6CUB+3F8nRPToTQWbM=; b=Ys9U3Kfsb+x0OtxlTIdkiPYl+
	7HAa1RwkxzP4uTjWEdFkVKuPeiA3AuPDRFuImRhOrva2BK/FAR+qCJrZOd2bqrBR73rbqq2bcJg/U
	dMXcEDVQk3CzEDy0jZIu+XlnOExaP6RcUGkE41htkUeKkB2bJt/36J4LanMLg0wp4ZrqpaZxkQ9O+
	BCOEJuIP9jNTO21PLyeUbIRtcC+uo09NdeGZ4AGvePURGy0YguNtVh/wrAdezrJbkAmfSBxTYXt1V
	TxEpKuEAIt/reQono4Ivs5JFl5ZkiLvSX/K5Q+80m3YLcWifqGB+5vWWNtKyZeVYeLh0hLpIek7da
	KyosSGGgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLd3c-0001MG-IA; Wed, 01 May 2019 00:25:08 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLd3Z-0000m7-Re
 for linux-riscv@lists.infradead.org; Wed, 01 May 2019 00:25:07 +0000
Received: by mail-pg1-x541.google.com with SMTP id d31so7610029pgl.7
 for <linux-riscv@lists.infradead.org>; Tue, 30 Apr 2019 17:25:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=wBeD3b909RdFy58d+At4l9FRNp3CkcTVG43WCw6PgfM=;
 b=UUni8NCNKRgcDZzt09yN4ZkOr5ERYa3/18JrLfu+88GoJq2NgUzSWFDuNo3aIITt5B
 7KFuK+CMHO34y/h5iL2aMmZtXpCYA0mD+NfxYTyILksuHQX6Ykv2lAwzVR7AZqTYqWWp
 jI0aMrTW8MlK+JseDslpMnsuiWE06HVnLD4SCPqLey3xPhGIo6o5CKF5CwyX8z029DGm
 hSa5klySuszuKwEvbbWmOfM2cuNb+dvbwKKjQ5dTdfPbfkFMJnJnGyj3pdn6sSaofMHd
 gDVyaVUfegBgzNhjFnAtt9hI9PQyc8tEo6xjLWeLXLeqKpzSIbFL4rzL58F3axMmnOFk
 UWQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=wBeD3b909RdFy58d+At4l9FRNp3CkcTVG43WCw6PgfM=;
 b=pmFzuKgexkFPhuKK+oJmbiYvf8L31HzB9D0XpjOYe6FbIR/AeN7jK1X1mU4A0jxTtJ
 umjZVhKPtLzx9jm9+6O4o34NPXJoBoGZBlkpU5Gm9DLc6d9JOvjDcd2C038BdiqaqO/P
 RpbFayLOQmdAEJ0pLdtxF13SvJ4S4EHsLEZufTi6RxA99a0C8O5XTTGhhHyjEQrgDCiz
 cB4yEdpkpn1+UShaZSgzA6psXnSiTDu1TUrXUs5fUB39nkpEvYJWzpAjAGTUROW5VKns
 uvarqxT3lxnajvd/xF1H6wpuYhA7SAhATc1wnhSpqvZa81zlheefYrhStwN5pLMiJWPA
 gshQ==
X-Gm-Message-State: APjAAAVHgLjqrv6OE2lvhD703M0t5HNrTm1AwI1lUbYKe3mBY8NcXRSP
 F2SbsMGnSbn8p1fh/fxqF1LclA==
X-Google-Smtp-Source: APXvYqyrq84qFMlrdBzc+89KzXCioB8oGv3uwDjU+AogH+K1vFy/FQY/zljc4Y4fjJgLjtya4EJv8Q==
X-Received: by 2002:aa7:8719:: with SMTP id b25mr35960225pfo.90.1556670304608; 
 Tue, 30 Apr 2019 17:25:04 -0700 (PDT)
Received: from localhost ([12.206.222.5])
 by smtp.gmail.com with ESMTPSA id x128sm63049012pfx.103.2019.04.30.17.25.02
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 30 Apr 2019 17:25:03 -0700 (PDT)
Date: Tue, 30 Apr 2019 17:25:03 -0700 (PDT)
X-Google-Original-Date: Tue, 30 Apr 2019 17:24:03 PDT (-0700)
Subject: Re: [PATCH] tty: Don't force RISCV SBI console as preferred console
In-Reply-To: <20190425133435.56065-1-anup.patel@wdc.com>
From: Palmer Dabbelt <palmer@sifive.com>
To: Anup Patel <Anup.Patel@wdc.com>
Message-ID: <mhng-955c86e5-6dfb-4554-a435-49cfefad6185@palmer-si-x1e>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_172505_905048_576E9625 
X-CRM114-Status: GOOD (  19.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: aou@eecs.berkeley.edu, Greg KH <gregkh@linuxfoundation.org>,
 Anup Patel <Anup.Patel@wdc.com>, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, Christoph Hellwig <hch@infradead.org>,
 Atish Patra <Atish.Patra@wdc.com>, jslaby@suse.com,
 linux-riscv@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 25 Apr 2019 06:35:06 PDT (-0700), Anup Patel wrote:
> The Linux kernel will auto-disables all boot consoles whenever it
> gets a preferred real console.
> 
> Currently on RISC-V systems, if we have a real console which is not
> RISCV SBI console then boot consoles (such as earlycon=sbi) are not
> auto-disabled when a real console (ttyS0 or ttySIF0) is available.
> This results in duplicate prints at boot-time after kernel starts
> using real console (i.e. ttyS0 or ttySIF0) if "earlycon=" kernel
> parameter was passed by bootloader.
> 
> The reason for above issue is that RISCV SBI console always adds
> itself as preferred console which is causing other real consoles
> to be not used as preferred console.
> 
> Ideally "console=" kernel parameter passed by bootloaders should
> be the one selecting a preferred real console.
> 
> This patch fixes above issue by not forcing RISCV SBI console as
> preferred console.
> 
> Fixes: afa6b1ccfad5 ("tty: New RISC-V SBI console driver")
> Cc: stable@vger.kernel.org
> Signed-off-by: Anup Patel <anup.patel@wdc.com>
> ---
>  drivers/tty/hvc/hvc_riscv_sbi.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/tty/hvc/hvc_riscv_sbi.c b/drivers/tty/hvc/hvc_riscv_sbi.c
> index 75155bde2b88..31f53fa77e4a 100644
> --- a/drivers/tty/hvc/hvc_riscv_sbi.c
> +++ b/drivers/tty/hvc/hvc_riscv_sbi.c
> @@ -53,7 +53,6 @@ device_initcall(hvc_sbi_init);
>  static int __init hvc_sbi_console_init(void)
>  {
>  	hvc_instantiate(0, 0, &hvc_sbi_ops);
> -	add_preferred_console("hvc", 0, NULL);
>  
>  	return 0;
>  }
> -- 
> 2.17.1
> 

I merged this.  Also, it looks like Exchange is doing something to your patches
that makes them a bit difficult to merge.  If you don't have a way of fixing
that, can you include a pointer to a git tree with a signed commit/tag?

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
