Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE50EDBB44
	for <lists+linux-riscv@lfdr.de>; Fri, 18 Oct 2019 03:15:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mxDqZUU3XI4IY7q8NKlLaB5ZgEIEaS91vJuak9VN+v4=; b=lkIPnJjjKaNwzI
	nksCP5qgGiczpYSny0WK8j1O5fcrfkqkiAnVzQWQ08G1k1hHcokpyG5Nk95w55LJy0A5pSn7iXxfV
	HwxbMP8o4nkLnBYqS1b4BSKo7hPoqxwBIUCJ0aUkv93pohchTq/Vwyjlp/T0nKOUTCItK2XpwFi6k
	2gPxJH23CA+bFw53tsy2SQCFCc5QTMAtiG3maENm+ztW6ANXeZ+ITeekyrd37XlpRLnZYiMPC1ZtY
	Od2d9yxMouNobxfUyH+IbwvDMDAwjWa61CbhfPH5IrMxyCpYkNEiRiK7Ly2ZxpCnHgUPfoyPnj83A
	6x8P6bHHFsbh0CJAUWGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLGrf-0003xx-NM; Fri, 18 Oct 2019 01:15:35 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLGrc-0003xf-GK
 for linux-riscv@lists.infradead.org; Fri, 18 Oct 2019 01:15:33 +0000
Received: by mail-il1-x143.google.com with SMTP id l12so3991903ilq.4
 for <linux-riscv@lists.infradead.org>; Thu, 17 Oct 2019 18:15:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=xMVFVGLiYSSLdYjE6VASkhDClgpi5ByjWpde3EPzDTo=;
 b=awDrOrTNZsTliFwdBDUIyxs4uX5joR2/y276X1UXTxr76eI9fflr4Pp//BNKhw4LDP
 udF5JY/ajGrCY8RdxmG2kJGXyipHWyNWPld3aZCqGILhwuTzivqGa1IDcV2DNRnj84q3
 jlhnWl/WK/LTKjgg1pinyZrNLcMWVxx9FOwlZFX2iHQXHVfBZCuyWYvdWDFdVSM66+B4
 SHBwMkz/wzQWkQVbZR+r2lNRYuiUTKLqYPo0e3CA1LavnCJGdkOF8sRgaNGe05WYeZC+
 xG/cSojbKWDQHv1N8NC8pVWLjReHS2jTlxCJFM1wMFgozUD9nbcTIJIUroCyYj2/DMdi
 Udlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=xMVFVGLiYSSLdYjE6VASkhDClgpi5ByjWpde3EPzDTo=;
 b=AQd3Q7irOH7OOOe3ooDnf/xPTnQ9Teig+W+2TYH/OXoA9haZMAhOKHdPf3MXqUkEKZ
 Qh2p+fLwj2HwCa8UZWhu9ACEpMNt3y96aUtzRJZBNlHbKGKwrwD0WFqZom8SLA08oejN
 hk6Rk6u1ylSyNNB8rzyjFD1ey5/hdxd4w1dvyXPZhJQM/pJN2odUzBs7MFjacfSH1aty
 P0NSzCD8bpIMOwCkse1bUrkRBNzr3vU2JrLv8/bVGWZ8NBDmpaBGW6+MouzetQw2OKpj
 duT2JVgS7HBwCOmdkAQ6C3ikg0CvcqawOFYc8EBBvH2ABKD9zQUZdThK1TsVUrTDX7Is
 E9dg==
X-Gm-Message-State: APjAAAUHM+xpMtadlayr5B+N/mMI/uaG/jhegP+KOWgmHUrTr1XU9zp7
 9Co990vRLGTBIQdYzM5neQM2fmsqDDI=
X-Google-Smtp-Source: APXvYqzDVQiMyZIgvTZC/Q7ZcqBa0pFaN3EJ5m9p1+F6LuzHOYBWFwOn3qLkn0mFMNJ187/UdFrNTw==
X-Received: by 2002:a92:83c5:: with SMTP id p66mr7527394ilk.204.1571361331720; 
 Thu, 17 Oct 2019 18:15:31 -0700 (PDT)
Received: from localhost ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id t86sm1829722ila.21.2019.10.17.18.15.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Oct 2019 18:15:31 -0700 (PDT)
Date: Thu, 17 Oct 2019 18:15:29 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: linux-riscv@lists.infradead.org
Subject: Re: [PATCH 2/8] riscv: add prototypes for assembly language functions
 from head.S
In-Reply-To: <20191018004929.3445-3-paul.walmsley@sifive.com>
Message-ID: <alpine.DEB.2.21.9999.1910171814310.12651@viisi.sifive.com>
References: <20191018004929.3445-1-paul.walmsley@sifive.com>
 <20191018004929.3445-3-paul.walmsley@sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_181532_572160_D77B4DAF 
X-CRM114-Status: UNSURE (   9.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 17 Oct 2019, Paul Walmsley wrote:

> Add prototypes for assembly language functions defined in head.S,
> and include these prototypes into C source files that call those
> functions.

[ ... ]

> diff --git a/arch/riscv/mm/fault.c b/arch/riscv/mm/fault.c
> index 96add1427a75..ec15a9b15448 100644
> --- a/arch/riscv/mm/fault.c
> +++ b/arch/riscv/mm/fault.c
> @@ -18,6 +18,8 @@
>  #include <asm/ptrace.h>
>  #include <asm/tlbflush.h>
>  
> +#include "../head.h"
> +

"../kernel/head.h", rather.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
