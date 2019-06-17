Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A2764839A
	for <lists+linux-riscv@lfdr.de>; Mon, 17 Jun 2019 15:13:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IansDIBi0994E/eT79IwgQ37mI3QyIE8XJsTgApvdPU=; b=F8BZWMqKSz2ABX
	DItKGpi6Gxb+UGPsiMv7C0bZKKrr1J4aPQvKCXj56xuts0Jvb8cSLWwrjAp715L8V1XEmD8CG9gR/
	0MURUwy94JIqbKY86JSwiCDRCdMmiK5I5q0oStX6fVYiJFKb3dvtljwTWnOCr/ozxJxaMkTR6+Agk
	oWxeHrnagSIPrOzwGwyn3zGewKfNNwZGQOnWs3Pb9EkhVkqniiP156HvfxX8ZL4oOO83dmXFeL4Kp
	NSwvFSwXzDwEHDDA1/uGgD+GuEKY5c9qksmKXo2n4KcC0VXzr2j1kSG8Dh8RntITSetLsUb+VoF17
	cnmEk0rAEqaVaWAogpVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcrRX-0008If-Vp; Mon, 17 Jun 2019 13:13:04 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcrRU-0008IA-Pj
 for linux-riscv@lists.infradead.org; Mon, 17 Jun 2019 13:13:02 +0000
Received: by mail-ed1-x543.google.com with SMTP id d4so16075161edr.13
 for <linux-riscv@lists.infradead.org>; Mon, 17 Jun 2019 06:13:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=jydvJwZvgD3+dpjn9mrtUPh7aHgAFOblD3+o3xBq6U8=;
 b=ALVp8o0XH9gp0sYBQbJJJVANiGX9ll9S+pJOAkzbLzq/xDQabH3BGH6ff1ZfTbY4L4
 P1glPx9diW/H9daolc2oyMW+mO53OCXHbjysn23S5Y9GGOHA57um5CjxDytFyeHb66MO
 u5S8mg8Y4NSZQlMM8oMHGUdvhh+AUgmVgdaFhA39QN/nuS1wBn7uHj6uZm9Mt12U3CVH
 gmykHfNIcwlSaZguajKtFARqS+Up0N0OMWpAhTKEBUVMnR6Vf3H9w5P6LKU+aMGtBWUt
 HITphyH2OvKUbBVo92/yy2B+xDy2weSxKfQPSdbycMQzkc4zcM3qR5wotV4VIrwC1a5/
 CbiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=jydvJwZvgD3+dpjn9mrtUPh7aHgAFOblD3+o3xBq6U8=;
 b=M/CdM6d/vuonhtWIcCpLI+6j2SpAeIap+qaywUvRwLnjL7+oljN37E9Z2u299ynFva
 nOCMwxWABqWiaTk/kYASPyJ2hddkrIf761Z15HRz7FZm08/haasy4lILAS4PDkFcy5UT
 7AjUXuxrW+GJhokvWLZ5GOToUPiTrd3vjCJrWQQadMGU2frbODjXnKHuIosafsD290wH
 tRfRweTXJrfGCArnM2AGojbEw5hykZ9K0YjVxrj9ZsXLHPWv6kvfIv12TosQ6v+oBf93
 4deBB4Fz6/nI9C/72/l8kFk4Rjjn/Ua9qy+cRoWhYmDKUX4pPHdb6t4Lg7Chq5TDvVDp
 aeuw==
X-Gm-Message-State: APjAAAWSZ1lDiIiivAvJctyqEAkrIBSKEyFTv6O1bJmOpeY78OtdVKF4
 v1Hk1VgZ5AvD8MtHp9uhabe19g==
X-Google-Smtp-Source: APXvYqxMRRpqNzGBuoSEsDSQuYtMT9CS+NMz9bBxOj+SXlD4PPUKpb8rJNb6Ke+8T45bzxZRkWSEag==
X-Received: by 2002:a17:906:454d:: with SMTP id
 s13mr80177045ejq.255.1560777179103; 
 Mon, 17 Jun 2019 06:12:59 -0700 (PDT)
Received: from localhost ([81.92.102.43])
 by smtp.gmail.com with ESMTPSA id a27sm3503556edd.78.2019.06.17.06.12.58
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 17 Jun 2019 06:12:58 -0700 (PDT)
Date: Mon, 17 Jun 2019 06:12:57 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Palmer Dabbelt <palmer@sifive.com>
Subject: Re: [PATCH v3] RISC-V: Break load reservations during switch_to
In-Reply-To: <20190617030947.32175-1-palmer@sifive.com>
Message-ID: <alpine.DEB.2.21.9999.1906170609430.32654@viisi.sifive.com>
References: <20190617030947.32175-1-palmer@sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_061300_833206_7F68191B 
X-CRM114-Status: GOOD (  13.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-riscv@lists.infradead.org, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Palmer,

On Sun, 16 Jun 2019, Palmer Dabbelt wrote:

> The comment describes why in detail.  This was found because QEMU never
> gives up load reservations, the issue is unlikely to manifest on real
> hardware.
> 
> Thanks to Carlos Eduardo for finding the bug!
> 
> Reviewed-by: Christoph Hellwig <hch@lst.de>
> Signed-off-by: Palmer Dabbelt <palmer@sifive.com>

This breaks the rv32_defconfig build:

  AS      arch/riscv/kernel/entry.o
arch/riscv/kernel/entry.S: Assembler messages:
arch/riscv/kernel/entry.S:343: Error: unrecognized opcode `sc.d x0,ra,0(a3)'
make[1]: *** [scripts/Makefile.build:369: arch/riscv/kernel/entry.o] Error 1

> ---
> Changes since v2 <20190607222222.15300-1-palmer@sifive.com>:
> 
> * REG_SC has the arguments the right way around.
> 
> Changes since v1 <20190605231735.26581-1-palmer@sifive.com>:
> 
> * REG_SC is now defined as a helper macro, for any code that wants to SC
>   a register-sized value.
> * The explicit #ifdef to check that TASK_THREAD_RA_RA is 0 has been
>   removed.  Instead we rely on the assembler to catch non-zero SC
>   offsets.  I've tested this does actually work.
> 
>  arch/riscv/include/asm/asm.h |  1 +
>  arch/riscv/kernel/entry.S    | 11 +++++++++++
>  2 files changed, 12 insertions(+)
> 
> diff --git a/arch/riscv/include/asm/asm.h b/arch/riscv/include/asm/asm.h
> index 5ad4cb622bed..946b671f996c 100644
> --- a/arch/riscv/include/asm/asm.h
> +++ b/arch/riscv/include/asm/asm.h
> @@ -30,6 +30,7 @@
>  
>  #define REG_L		__REG_SEL(ld, lw)
>  #define REG_S		__REG_SEL(sd, sw)
> +#define REG_SC		__REG_SEL(sc.w, sc.d)

I guess this should be __REG_SEL(sc.d, sc.w) ?


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
