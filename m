Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04B5B179C3E
	for <lists+linux-riscv@lfdr.de>; Thu,  5 Mar 2020 00:16:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=fLuBSubRkGwc0et1lSwg/yOrJz68JCULXi64QxtD9L4=; b=o+4M77O5M/39O7
	H7SLtc5rkY3+7UkKC2pG7M0wft969lR/inGLRVyvYJr4cyO8dZ50bYLbwHKPr3MFKbmuNMWlHt7ff
	0l8EvxJ+u3qdzTNAdnEAA1ibh7jAAZ04m1edokRJjSnWZFrSp0rndP6ETChGemVrs+/R6zm47Adbf
	O/oVmrTxFFZOg3kNlHCitLyUFI0wwVZcLZwbm/feplVtec5IZeGPQzhc/ak/NGxXQKSSeNN5ImN/X
	vr0yUvN3Q1NZGpkrqVQlQ5My4aWYtQ011XbNwtmiPVpjB6PzLxIZstabry3NkO9CWVsILZ4D5uV1q
	VdcXOcsDd0C8BvcpbRhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9dFn-0007rW-TX; Wed, 04 Mar 2020 23:16:39 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9dFk-0007qD-Qk
 for linux-riscv@lists.infradead.org; Wed, 04 Mar 2020 23:16:38 +0000
Received: by mail-pj1-x1043.google.com with SMTP id s8so1635609pjq.0
 for <linux-riscv@lists.infradead.org>; Wed, 04 Mar 2020 15:16:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=fLuBSubRkGwc0et1lSwg/yOrJz68JCULXi64QxtD9L4=;
 b=Zfx3aZDHOKJv/xTct7dFMPFiJ5RG5nooZwf3B1Md2rdmwylu/vxshgKBxR/JXzh0tD
 ILxZPjvmXfQO/SuH/N0qK07KCfDtfALyxDCCZFxc2B5oaT8B5uCN1n5MIE8fM8Pw8OYT
 fyBlEUvLtcv7XvQQPzrsehVW9nxkUUlJnBnnBg4nPiFsqZpRmv0BIeAtS5xWy3bAUkK7
 EKOTDIA9tusMsoUyU23lmsiRUAutFyFaC9sPkiymBzoqkhA8m2XNEP5ACMQ87Dr1K9L7
 UhONoltdyIcJ0bCTJjQ6f3GbWTkvgcWNwd2jDPQLNNTAck6BZB9ffrWTJncrYXc7y5EN
 rk3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=fLuBSubRkGwc0et1lSwg/yOrJz68JCULXi64QxtD9L4=;
 b=E4Ee+rc8Xa6uxjO9uFs3rWWA3HIzlXO6HpbkHCDqeAexM/OGrSMtOBsir+N420So9H
 W8WvyUhSLlJxsmljGtwUshMsc0366oD0wr2p113xL8m1yHakGaSrrIsQdWVab8Wp7Rxc
 bIUoETKm1uMbiQZ5x+6qXrdB4ZHzSNIoEQ/AFYOtu5w+n9gFDco5F/+1hSD4ln/tIudv
 /VT0eo+uRnqEwTjm0Wb8Y/DfNCPACM8ETK+txX/6M5WOn9C+IshKV/eKTS7pycBFFF4L
 gTrgEaCyP5Kut3k3PhQiIG7zhbxd+OnJE844cUD8Iqj3hbN1WPV05vUReq9UTdEqmA6x
 b8nQ==
X-Gm-Message-State: ANhLgQ0B1DC/+Ii0H4aICeZDD4kih7v0p+E5r52NIjWMdfg5oN6i1lJM
 LtQ/G+If7vAHBXV7ow6va3vlHQ==
X-Google-Smtp-Source: ADFU+vs16bwXQpjbdGTb2gdRF0APKsg86dgJcOqt7o9kJ87t5Lecc5fFkxXvGGtSwPqdwC/b2hv4bg==
X-Received: by 2002:a17:90a:1f45:: with SMTP id
 y5mr5271710pjy.170.1583363791341; 
 Wed, 04 Mar 2020 15:16:31 -0800 (PST)
Received: from localhost ([2620:0:1000:2514:23a5:d584:6a92:3e3c])
 by smtp.gmail.com with ESMTPSA id c5sm29203530pfi.10.2020.03.04.15.16.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Mar 2020 15:16:30 -0800 (PST)
Date: Wed, 04 Mar 2020 15:16:30 -0800 (PST)
X-Google-Original-Date: Wed, 04 Mar 2020 15:10:33 PST (-0800)
Subject: Re: [PATCH] riscv: Fix range looking for kernel image memblock
In-Reply-To: <20200217052847.3174-1-alex@ghiti.fr>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: alex@ghiti.fr
Message-ID: <mhng-2ab0d9dd-182f-4c81-8432-5d510cd3dd51@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_151636_869556_587B5FC7 
X-CRM114-Status: GOOD (  16.95  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: alex@ghiti.fr, anup@brainfault.org, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, jan.kiszka@web.de,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sun, 16 Feb 2020 21:28:47 PST (-0800), alex@ghiti.fr wrote:
> When looking for the memblock where the kernel lives, we should check
> that the memory range associated to the memblock entirely comprises the
> kernel image and not only intersects with it.
>
> Signed-off-by: Alexandre Ghiti <alex@ghiti.fr>
> ---
>  arch/riscv/mm/init.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
> index 965a8cf4829c..fab855963c73 100644
> --- a/arch/riscv/mm/init.c
> +++ b/arch/riscv/mm/init.c
> @@ -131,7 +131,7 @@ void __init setup_bootmem(void)
>  	for_each_memblock(memory, reg) {
>  		phys_addr_t end = reg->base + reg->size;
>
> -		if (reg->base <= vmlinux_end && vmlinux_end <= end) {
> +		if (reg->base <= vmlinux_start && vmlinux_end <= end) {
>  			mem_size = min(reg->size, (phys_addr_t)-PAGE_OFFSET);
>
>  			/*

Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>

Thanks.  I'm going to target this for the next RC.

