Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C6DE13B58B
	for <lists+linux-riscv@lfdr.de>; Tue, 14 Jan 2020 23:55:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:References:Message-ID:In-Reply-To:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Sf9mie0Pz934kmh4EmyF4Fmp91t8y8zzkblqm9jbhoM=; b=d69IOpZXqdFMToG3XMkywdWqS
	CHYthggbB96/eEFvlJHa4WFg0gqw51kTIcl/M/Cv34rkwQeiYyGS/wpT17G0i8qXZGccYtG7DrXC7
	EzorC231LZasHZ6FU6k3JhKNVTiRSUZM4YsQPJNbUplrNWW4nUeo0OU7u/Ei+/HLDnBZNwpzXdI9k
	40ozFdyThxNnNoVOh+D2UcXWhiBiDSxfE6wjoAPB06lnT1hJGQ3y9zr0fHQGQ18MQ2ZYfZRSG6IEt
	i+6xRXhdmMO7IWpt8hvQw5rKwSsrEnT3MszoigekkIW5V56Rx6GGXkO82ya7vMEewxRmvHohGyzFZ
	6DoR5BkuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irV5i-00076e-CB; Tue, 14 Jan 2020 22:55:18 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irV5f-000763-B6
 for linux-riscv@lists.infradead.org; Tue, 14 Jan 2020 22:55:16 +0000
Received: by mail-io1-xd44.google.com with SMTP id z193so15743032iof.1
 for <linux-riscv@lists.infradead.org>; Tue, 14 Jan 2020 14:55:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=Sf9mie0Pz934kmh4EmyF4Fmp91t8y8zzkblqm9jbhoM=;
 b=nMUjESMW4hf0JSEUW7WoDc/wRMRIYxfCCqEAV6LYnnOW2/D78908KeuZHoRr5gL7xJ
 68a8fmTrh1hvunWKfpG5JS407uh2Ea8s8juPCXbxuMVYeLzc3tLWjJSxaDPttOfNuafM
 ac1wgJAm4g6dP3agcZb2RL8vuQLqcBPrbm3zKvTeH2nH0Dj8/1IsFoYE7+ukAbEl4y3x
 ihXxvstnhpmHr4hbgSryr2MtQSDI/aGQJyLhcJoFt8YyDErSCpXdlzDdMG6v5h4OzfOu
 Sa/r+tYMRvKxkUh3Gxc57g7YnAp/3cJtdtBPI97/0pLipUJ2o/LUGw6ww4DSUrQVSmgY
 Au4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=Sf9mie0Pz934kmh4EmyF4Fmp91t8y8zzkblqm9jbhoM=;
 b=nUc3jp+t8QU2PgaN2rwLbI8k9s9npMdB0VG5iUcwhfioGzw+xZXrAIDbHJh8KaNyDc
 2PepzPxl17RAp8PhfuLzeNx9k5pYFlvIFmJRjsC+pwd48niaB+jMb2oLn+xLWhOTofIv
 eEid/Mn/hfOST5WCFFEeF4eI/rN52df9/7NKP9mlSWnG4ehk9+GN3G0VaScZcohp4XIY
 t94668fxz0nyOzo8yT9TCgos9vHR+TVQxZartcgkvLBn7t1DIRkVSYgJsO8C7bSG5fzB
 ch3IkDCzPP6sut04Wvxmi4l4b6invqsRb7FlSmqhMm9ltZYc+2T+IVfzSa8stdJ1u728
 XECw==
X-Gm-Message-State: APjAAAWxqGLkPGNNuYSwiOAUkwG39Ev6fEpNkBWtOb/bBxXqgXq48QwV
 DnqLfbzxseBi9RjqQ5aYqgTsvA==
X-Google-Smtp-Source: APXvYqz8djSH1ntG8s3wT163J3moUwwfYppKnhWa0LzYyjUzA4PFzcv9GCKm1p3MIafWF+BoL3+Kag==
X-Received: by 2002:a5d:8c8d:: with SMTP id g13mr17945399ion.65.1579042513968; 
 Tue, 14 Jan 2020 14:55:13 -0800 (PST)
Received: from localhost (75-161-100-226.albq.qwest.net. [75.161.100.226])
 by smtp.gmail.com with ESMTPSA id u20sm2535276iom.27.2020.01.14.14.55.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Jan 2020 14:55:13 -0800 (PST)
Date: Tue, 14 Jan 2020 14:55:12 -0800 (PST)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Greentime Hu <greentime.hu@sifive.com>
Subject: Re: [PATCH v3] riscv: make sure the cores stay looping in
 .Lsecondary_park
In-Reply-To: <CAHCEehKchrwd7TTmSrhtEPeCmkrYrx7TX_c6ogpCpSkCKnBQoQ@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.9999.2001141449500.21279@viisi.sifive.com>
References: <20200109031516.29639-1-greentime.hu@sifive.com>
 <alpine.DEB.2.21.9999.2001091126480.135239@viisi.sifive.com>
 <alpine.DEB.2.21.9999.2001121011100.160130@viisi.sifive.com>
 <CAHCEehKchrwd7TTmSrhtEPeCmkrYrx7TX_c6ogpCpSkCKnBQoQ@mail.gmail.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_145515_540907_D7C7C99E 
X-CRM114-Status: UNSURE (   9.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Andreas Schwab <schwab@suse.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Gt <green.hu@gmail.com>,
 Anup Patel <anup@brainfault.org>, greentime@kernel.org,
 linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Greentime,

On Tue, 14 Jan 2020, Greentime Hu wrote:

> I think it is because the sections are too far for bqeu to jump and
> the config I used just small enough for it to jump so I didn't see
> this bug. Sorry about that.

No problem.

> I tried this fix to boot in Unleashed board.
> 
>  #ifdef CONFIG_SMP
>         li t0, CONFIG_NR_CPUS
> -       bgeu a0, t0, .Lsecondary_park
> +       blt a0, t0, .Lgood_cores
> +       tail .Lsecondary_park
> +.Lgood_cores:
>  #endif

Looks reasonable to me.  Care to update and repost the patch?


- Paul

