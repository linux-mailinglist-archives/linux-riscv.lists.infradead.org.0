Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43CB51E10A4
	for <lists+linux-riscv@lfdr.de>; Mon, 25 May 2020 16:36:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Kw2fKaRKvOIIxpRTa8x3Y4jbYK2CA9gBfngQDWLTWO4=; b=ZGlvF0AEGpDHjpnaj/mjm2DSn
	dJRuSkCrLNRyvo4WznhgjPRcwOklyvjI5YQcvRpQrFkCV0tviKzNalYlZmePOK1ZzyI3hygsrbt+v
	kSsiYFVXsSRJf0yEBDJmVkvc+/8ELXHAx41ZQ9k5WRv8/HLLnns3EjkI9Uphy2SKf3iApTxFIXZFG
	3F4rggEF6/h0DroOnsdEAviMDrUy+5j5aBRVQsZAuoNprDAkcl8a/66T0ZWin68a/HSvnQavhS3yM
	PdDIXP4tKrRFGVbGKOa6vemLUMBNCZLgjKwJZUVhAI+QcINwfy3G4VDynCUT/OE6AAvESwDRyCNpR
	TLP/31gfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdEDj-0008ID-OS; Mon, 25 May 2020 14:36:51 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdEDg-0008Hb-FP
 for linux-riscv@lists.infradead.org; Mon, 25 May 2020 14:36:49 +0000
Received: by mail-oi1-x243.google.com with SMTP id d191so16132339oib.12
 for <linux-riscv@lists.infradead.org>; Mon, 25 May 2020 07:36:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=tycho-ws.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Kw2fKaRKvOIIxpRTa8x3Y4jbYK2CA9gBfngQDWLTWO4=;
 b=OYhfUff4HeNuD4TiomdTQEIqVMS9FcFID+h/dgJYNqRV6WTC/nWx4s8+U8ymAQL+xu
 8Q+dzHfrBzHP+xqHi8Q+w7on7g0RSTjbgkGy87O2//lasA5VabsUVDD49fqer+2bxKCK
 jPDgpQtAcS8Vr3J/XFObPZb2gbjqnvWBp+bzkMyeIgLBsXK4DGk43toSoI0tv1vmo+++
 et+Vb4YX1kY3pzLKukpZaOayruopaNrQyk1zgVTPOn8MMMbf1iA61ort89lLRKT9zloK
 WwMUPJ+jXED2hXh56Wc0DCkqYS4UE5QdNJrmx7CUJdh/J+jlFZCGuNeAH85wDJcLxd+P
 WAWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Kw2fKaRKvOIIxpRTa8x3Y4jbYK2CA9gBfngQDWLTWO4=;
 b=DOebIpZlEiog72C9mW6e2Gtj15lgzDjjpY5ANPisqLMDki3dnr888045V9aPdzgk6R
 wEN2LtVa9YipEntxRVFYUi6J0yyxBddlPs2VMBFbhuDrf68ixDfIeeymo3PpaTqd2Z5u
 rBHQ5CJt0DUT4alfcFDPTUvVw9k5V8uQq3QnXFGscN4lFotF8sG826HZJZ0xNKAfXcUE
 s/xuY6vNDAWAmqOiKUOuGXyU+5PD6HIHrWHs/Ygl1J9yKTBE9iyNVOH7SD/CqBu1byoQ
 UisqaRCsYcmTkyNoUKcPNpEL3zRQBoQ3GLKCBsXMHTomfhCjRKRb/l8o6Hp3PJdskInT
 L1bw==
X-Gm-Message-State: AOAM531NpSmXBnzqpgBbvlIeOyLXsYoQ19q1cPYCW0qjvJ+0djjqp9CU
 U8RN1UnYR1rj5Oq8bGHPn7lcjg==
X-Google-Smtp-Source: ABdhPJxtiNlpD3jfbjf1oM2QC80aG/lFgqA1MfUGS6Q6/6T77Pk3NAH+SW2BlbBbd5ISrz98mRGRCw==
X-Received: by 2002:a05:6808:c3:: with SMTP id
 t3mr11190788oic.73.1590417406651; 
 Mon, 25 May 2020 07:36:46 -0700 (PDT)
Received: from cisco ([2601:282:b02:8120:e9d7:5ec6:88ea:b4a1])
 by smtp.gmail.com with ESMTPSA id e91sm5108353otb.40.2020.05.25.07.36.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 May 2020 07:36:46 -0700 (PDT)
Date: Mon, 25 May 2020 08:36:48 -0600
From: Tycho Andersen <tycho@tycho.ws>
To: guoren@kernel.org
Subject: Re: [PATCH] riscv: Remove unnecessary path for syscall_trace
Message-ID: <20200525143648.GM2605652@cisco>
References: <1590416306-66453-1-git-send-email-guoren@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1590416306-66453-1-git-send-email-guoren@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_073648_563423_232FC7B0 
X-CRM114-Status: UNSURE (   7.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
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
Cc: Guo Ren <guoren@linux.alibaba.com>, keescook@chromium.org,
 anup@brainfault.org, palmerdabbelt@google.com, linux-kernel@vger.kernel.org,
 paul.walmsley@sifive.com, linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, May 25, 2020 at 02:18:26PM +0000, guoren@kernel.org wrote:
> From: Guo Ren <guoren@linux.alibaba.com>
> 
> Obviously, there is no need to recover a0-a7 in reject path.
> 
> Previous modification is from commit af33d243 by Tycho, to
> fixup seccomp reject syscall code path.

Doesn't this suffer from the same problem, though? a7 is clobbered, so
the -ERESTARTSYS behavior won't work?

I haven't run the test case that was failing before.

Tycho

