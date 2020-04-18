Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0A4C1AE8EA
	for <lists+linux-riscv@lfdr.de>; Sat, 18 Apr 2020 02:22:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=afxKpHVPJ9OCNJjnzznWMPUeHi7w37qRBk8EQYOsjnM=; b=TkfR+k1ArOMNmN
	skRxlayEfmCdXkX+OZcA2w5mft7wdTVchfgz+VvJ9WCQwlSHFL28ko/7n0EGIW2G3qasXjqY4TIdD
	SITOWbvQD+m8HQwrr/8zFhncuzmZNDOjKNkKvmsOs8tyGZMslguSmcpxwLctKTQUZMbpTXLfXsjlh
	uqxNczQ7dyyG5NQ+hiYkWGBj+Vn9UXXzPsBiMas1XBCUacAm6HaFl1P/zgVguikKGv1Sjzo85lg6f
	Z7QEqlycaAV474ua+wfbK6lJCMWIr/yNm+c+549k0l9m5qdWFlB18r6BcxPZKo4xjUkwqP//yxAYD
	tMoeRcbhgmBdD8clx+qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPbFy-0006OA-UH; Sat, 18 Apr 2020 00:22:50 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPbFu-0006MP-R5
 for linux-riscv@lists.infradead.org; Sat, 18 Apr 2020 00:22:48 +0000
Received: by mail-pj1-x1043.google.com with SMTP id a32so1771296pje.5
 for <linux-riscv@lists.infradead.org>; Fri, 17 Apr 2020 17:22:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=afxKpHVPJ9OCNJjnzznWMPUeHi7w37qRBk8EQYOsjnM=;
 b=DxOAiy05X+29I8lWqeIvpPOcZiu4xGocSRX1lH03Tu0XGDnfF8dpp6MxjdXvA89wdt
 RlFc+beNI9S9jO54AYMy30tvXF/arxKwQvwCpfLIyaRKUxVXdOQ2Wu4gqH9NRxl7kIAG
 InJXSF/aqskcmEzOsmvKDuGGl1h0tr1pGCCeqtanShIUoonEoJGQnT9Mry6fIuCn4lc6
 XfNMxm0bUnJA1CT8qLFzutbpXXLgNj5YVoQE4Npx7I2WkS19v0/ez2MkV3pMv008GauA
 2J3XUF3WCu8dGmcnZrIl5o9513W/EQVPcUTDiJeglb4Rs3dNRktilOL1XFELMk2LAd7J
 GoXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=afxKpHVPJ9OCNJjnzznWMPUeHi7w37qRBk8EQYOsjnM=;
 b=ME3yk3iLla1hBtl6eUGNsimFFTFB5JDBGY61K92K+NFEkZ/+cWqD1iUadybDC8Co0x
 upFN1MTgcJTaaqBQiWHTUm/Qv6wHAj8dz5+yqXj0L3AYHID2DYlYOdJB0P7jwl84k5ds
 3Cb2uDF02EodrsQJ6xhs6np42+FnyV+tiTFpCyyePflWGoRR/wscG6Kd4NUYLSlptXUV
 ez7bZ0q5aon2gTYLgt6Z5uPYLQZSkQxIQz1821lqLOA7eqLrpZyGf3EkGPQfshpjr4I1
 vtbuVuwUIDhAj50jZnzzWjxXebekeh5D2zqk2WeVg39cstJ+6Y4zynLfi60gNL6OIu/e
 Oe/Q==
X-Gm-Message-State: AGi0PubgY135AS4w2ulQecLO2Bz07zOtsMDIBJXI1du7ySAb53hw/r0d
 R53STn6OGLMmeYl0q1sXrlfawQ==
X-Google-Smtp-Source: APiQypJODew0rL5ev8Z0CEdigTLWWwDg8051oBwyl6A851EcA+/LZ73fUL78Y5zPuNN6kuKO5OX09Q==
X-Received: by 2002:a17:90b:380d:: with SMTP id
 mq13mr7281871pjb.145.1587169365190; 
 Fri, 17 Apr 2020 17:22:45 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net.
 [76.210.143.223])
 by smtp.gmail.com with ESMTPSA id 18sm20943127pfv.118.2020.04.17.17.22.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Apr 2020 17:22:44 -0700 (PDT)
Date: Fri, 17 Apr 2020 17:22:44 -0700 (PDT)
X-Google-Original-Date: Fri, 17 Apr 2020 17:02:23 PDT (-0700)
Subject: Re: [PATCH v5 1/9] riscv: add macro to get instruction length
In-Reply-To: <621303b9cdea215af57329b401b15750c1f683ab.1586332296.git.zong.li@sifive.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: zong.li@sifive.com
Message-ID: <mhng-7b1c250c-84ed-4432-816a-5a1ac6d0a7e3@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_172246_953114_6B429A5B 
X-CRM114-Status: GOOD (  14.58  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: aou@eecs.berkeley.edu, linux-kernel@vger.kernel.org, mhiramat@kernel.org,
 zong.li@sifive.com, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 08 Apr 2020 00:56:56 PDT (-0700), zong.li@sifive.com wrote:
> Extract the calculation of instruction length for common use.
>
> Signed-off-by: Zong Li <zong.li@sifive.com>
> ---
>  arch/riscv/include/asm/bug.h | 8 ++++++++
>  arch/riscv/kernel/traps.c    | 3 ++-
>  2 files changed, 10 insertions(+), 1 deletion(-)
>
> diff --git a/arch/riscv/include/asm/bug.h b/arch/riscv/include/asm/bug.h
> index 75604fec1b1b..d6f1ec08d97b 100644
> --- a/arch/riscv/include/asm/bug.h
> +++ b/arch/riscv/include/asm/bug.h
> @@ -19,6 +19,14 @@
>  #define __BUG_INSN_32	_UL(0x00100073) /* ebreak */
>  #define __BUG_INSN_16	_UL(0x9002) /* c.ebreak */
>
> +#define GET_INSN_LENGTH(insn)						\
> +({									\
> +	unsigned long __len;						\
> +	__len = ((insn & __INSN_LENGTH_MASK) == __INSN_LENGTH_32) ?	\
> +		4UL : 2UL;						\
> +	__len;								\
> +})
> +
>  typedef u32 bug_insn_t;
>
>  #ifdef CONFIG_GENERIC_BUG_RELATIVE_POINTERS
> diff --git a/arch/riscv/kernel/traps.c b/arch/riscv/kernel/traps.c
> index ffb3d94bf0cc..a4d136355f78 100644
> --- a/arch/riscv/kernel/traps.c
> +++ b/arch/riscv/kernel/traps.c
> @@ -118,7 +118,8 @@ static inline unsigned long get_break_insn_length(unsigned long pc)
>
>  	if (probe_kernel_address((bug_insn_t *)pc, insn))
>  		return 0;
> -	return (((insn & __INSN_LENGTH_MASK) == __INSN_LENGTH_32) ? 4UL : 2UL);
> +
> +	return GET_INSN_LENGTH(insn);
>  }
>
>  asmlinkage __visible void do_trap_break(struct pt_regs *regs)

Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>

