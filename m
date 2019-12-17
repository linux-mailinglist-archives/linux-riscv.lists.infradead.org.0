Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AE0D122A84
	for <lists+linux-riscv@lfdr.de>; Tue, 17 Dec 2019 12:44:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AHeGaS77ZPH3NEoT0AAzUhtyDade0MT4Q/FMpf8MgrI=; b=AL8kERk0YW+pQn8VDo+C6mCP+
	7srOqwYxsiPfTOX3uhBFgeItHnBpCs1zKltTm7082q87MZDLJqdjuEidSNkEpISjb8XJ1uOga/XzT
	gaAQXD/+1Ducj3Gz74sc6MYFYVgvHpvW5GQc/1JMtgW+8wYcgQJHeW84gdQSj7gkZETTayZ5t5GaD
	wtx3f9VpRSTaxiQiJfAPLDeSi/SwceqDuTK0K6pTqWH339ypZ+48X+V1nWQlcvs9/xMPzg2WmIKvL
	kRXQqPuEeFZNuV5o3roWXp2kuzvPWf3MsXxDpw3kIMuF2JuxRWJHGV+dSd44sccEgIZpDMJmfxQpT
	FcWPRWJ9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihBHP-0001qz-Pf; Tue, 17 Dec 2019 11:44:43 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihBFi-0000B9-IE
 for linux-riscv@lists.infradead.org; Tue, 17 Dec 2019 11:43:01 +0000
Received: by mail-wr1-x442.google.com with SMTP id w15so10969419wru.4
 for <linux-riscv@lists.infradead.org>; Tue, 17 Dec 2019 03:42:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AHeGaS77ZPH3NEoT0AAzUhtyDade0MT4Q/FMpf8MgrI=;
 b=f+YVgeySxvoTuZpVcemxB3CZnayTqvhMFqlbAffAydxjDv2MFEg8fXpdLm8CWl1vOr
 h3VafJR4WSmTyaS8qILdMKpW6kPJjjogDM8IjuXHzbv+sE0rySfRf97DXo2kpOQckrEa
 SUqE5VoEcveK+AsaRsnMuqQM+Xj5y8KEFwSli18LG7ZF1SvHkB1WSzbkKY9nGDs0Qi8n
 Rzh1zXQXhEyaRBoAyTyDBv9U7Y9/HQy3/paDOz8sTvlcowtEVGFtSkpmJHF9/EcHoUa/
 qn5kzfB6sGpKxSufzJMFugig6e5Qf3f7iokl5vrPU/zA+othKy19V+kdL5gnZ002amBJ
 LnpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AHeGaS77ZPH3NEoT0AAzUhtyDade0MT4Q/FMpf8MgrI=;
 b=s/DWUfLTx+6YpfJMENi7Km7S5JVfyg6ywFhRZEjgIgPaAjEzYkslMl+ClMfWmUFf/o
 71MqR4sj67dEoDbfKP7+15jHX785bql6WaoRb2Um6tDRHC4ud5ndPPXpXpffIsAB3Hch
 150JpR9BWU3NEQXmZ1oQarA+9PcAFAL6004kOpfDJOsC5SG2VWL0obZKqhJOdD18afJe
 aqq/5EyqT8hJRgg2EkE5wvKCAAIi3iOFqbpUAhUWjC2hdTONr1IR7nmGMTRddx+lIJKP
 VTfhjfrWZKkQRyIGtXBvc/xio+OlxLuoVXbDAKebtUhDIKZgRh5hVBnyo80zIhY2zL6P
 u7IA==
X-Gm-Message-State: APjAAAXLURBuTB1tCo9Vf7MJbRBZFTnIwFaT1Pl1ivVt7GtIGJfQvLjs
 DrzzDgz2gywNwb2fOiiDeXbHlWx6VMQgQdCMeOlg2A==
X-Google-Smtp-Source: APXvYqyEwMgpwxxVhBFu8E3sGYVn50VMSC9GhWOblkCRMvVA0SilijhsFUArVthhP1W4vKIA0miI2IUIIPNYu3VwG9M=
X-Received: by 2002:adf:dfc2:: with SMTP id q2mr35262604wrn.251.1576582976410; 
 Tue, 17 Dec 2019 03:42:56 -0800 (PST)
MIME-Version: 1.0
References: <mvm8snccqsk.fsf@suse.de> <mvm4kxz6xow.fsf@suse.de>
 <mvmzhfr5hkr.fsf_-_@suse.de>
In-Reply-To: <mvmzhfr5hkr.fsf_-_@suse.de>
From: Anup Patel <anup@brainfault.org>
Date: Tue, 17 Dec 2019 17:12:45 +0530
Message-ID: <CAAhSdy0Yd=U4qQT479X3Ejo5G=xJo0=DURC5pXkRzfBWAQF9kg@mail.gmail.com>
Subject: Re: [PATCH] riscv: Fix use of undefined config option
 CONFIG_CONFIG_MMU
To: Andreas Schwab <schwab@suse.de>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_034258_715073_6B3E3A04 
X-CRM114-Status: GOOD (  12.77  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: linux-riscv <linux-riscv@lists.infradead.org>,
 Christoph Hellwig <hch@lst.de>, Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Dec 17, 2019 at 4:45 PM Andreas Schwab <schwab@suse.de> wrote:
>
> In Kconfig files, config options are written without the CONFIG_ prefix.
>
> Fixes: 6bd33e1ece52 ("riscv: add nommu support")
> Signed-off-by: Andreas Schwab <schwab@suse.de>
> ---
>  arch/riscv/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> index b7fc77c0e860..298662e72572 100644
> --- a/arch/riscv/Kconfig
> +++ b/arch/riscv/Kconfig
> @@ -156,7 +156,7 @@ config GENERIC_HWEIGHT
>         def_bool y
>
>  config FIX_EARLYCON_MEM
> -       def_bool CONFIG_MMU
> +       def_bool MMU
>
>  config PGTABLE_LEVELS
>         int
> --
> 2.24.1
>
> --
> Andreas Schwab, SUSE Labs, schwab@suse.de
> GPG Key fingerprint = 0196 BAD8 1CE9 1970 F4BE  1748 E4D4 88E3 0EEA B9D7
> "And now for something completely different."

Thanks Andreas for cashing this down.

Reviewed-by: Anup Patel <anup@brainfault.org>

Regards,
Anup

