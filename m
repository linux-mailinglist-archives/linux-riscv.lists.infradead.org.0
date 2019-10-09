Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C10D4D04EE
	for <lists+linux-riscv@lfdr.de>; Wed,  9 Oct 2019 02:51:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wb/MiPd0j76dWwqilaB95F9tcq0zsxUHYHBIBkdKQPY=; b=rlOCkEcJsGbwQp
	PaSLRZEaXFf3bGGLLLw1aifM/3WmC9nLYjLPqifMNL5OBiKDnEhhr8Eugrp+xrqyOLOsnmf1WrxXD
	aDtGSUtoF28q/82XAlK2v92qFR8a2eLASwkIZeQVJAdVB+MnHGBckfSGbBGXF7yR1zNYbU34ZlOe0
	P68+3R1hF1mtTIKXRdmnYiRuEncx4NSIa+3dAcwfmyhcvEDpV8Kyiz86xO9DcWi+0ubtrTW9F9qsl
	B5TZ1v4hkFLI5k2FA/PFrzq+nZrbbUON7x8TqGTRllnbtOc5bTLlUaz0JgD8GEsouIiz/KGtl5Pyg
	PalcBxkdk3NwsAgWzXog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI0CN-0007Zs-1o; Wed, 09 Oct 2019 00:51:27 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI0CJ-0007ZP-2w
 for linux-riscv@lists.infradead.org; Wed, 09 Oct 2019 00:51:25 +0000
Received: by mail-io1-xd42.google.com with SMTP id c25so1061976iot.12
 for <linux-riscv@lists.infradead.org>; Tue, 08 Oct 2019 17:51:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=EMZtjM31Em1vP/4BHL66TlLSBp4SJ3Jkhr3vg2//7Jg=;
 b=FYPYWqSyx4I3ZdZfLoUgyxUd20pJG/ZUWUmeIssVu39IfkVLIkxhKVy06RoPkesrsm
 hFaWeoAHnxfoYSf8IZwPDCWB1n5+X8KncOA8FGYqRdSWFpoJEys20ueJ1eEmPy/L6dt/
 DyHkVUXmlwQiddd7cu0vt2BJMC51MIyDgimr5t1fA7UaU0hq5EcGEsWQBVyynaW8K+fW
 KBfCdGxTbpLbrr3CKY2Vt+QzyHOMTQjTAKsi7lzyq/8yxweHp2onHOFAs577ckKV94tz
 SiOGqQEafjAzm1mJqRqqJkUy0VQCsoOiHafkVUqLZT5ohXOw3ezyhsJqN/tE9TTThuEw
 QbJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=EMZtjM31Em1vP/4BHL66TlLSBp4SJ3Jkhr3vg2//7Jg=;
 b=F040FdYZCtPvsBzxu/exnet9xYxuWV8QoQtU7QWDUb+iZC9kqMP34BBvzs8wdAQuvg
 xOU8rya1rL6ZmQVdHyMI/kwexVhTO4KjJCKaSrm0aMXVXN+PFY4o9+7w5oCPEo4GAk72
 wedfRP4bX7g1Yse3BcnjYx+J4IU0x84abXdhHhitlXz8trTj4cpyDzVyPqDmbOMO8RPn
 lmL+yiAI9UMnuq9YyCTYDasY4ujGWctKARZKdgI7y81V3ahMRiRKqyfWkz2Hm1I1T3GT
 uFOblOgN8WKQX/hoFMAkhiDfMZEILQFma7ABtJsUzhRwd7Yaetajv9iRjbYPDC4WaKwD
 2FeA==
X-Gm-Message-State: APjAAAUPLrGbKuiNOtHrNmI/l0l7lGNk/F6jM8nq9kye6R6SMu1BfDM0
 WBsQbpQ/Hpe44TwsNhR/fyxkew==
X-Google-Smtp-Source: APXvYqx67KnJKfLnhVzjCetf/uH7UeQb+kzcmcUELfUuKW4/Y+MbDnfd/wSipbJOtBrTJKbztJ3S4g==
X-Received: by 2002:a92:5dda:: with SMTP id e87mr627357ilg.216.1570582281295; 
 Tue, 08 Oct 2019 17:51:21 -0700 (PDT)
Received: from localhost ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id o187sm363778ila.13.2019.10.08.17.51.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Oct 2019 17:51:20 -0700 (PDT)
Date: Tue, 8 Oct 2019 17:51:14 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Valentin Schneider <valentin.schneider@arm.com>
Subject: Re: [PATCH v2 6/9] RISC-V: entry: Remove unneeded need_resched() loop
In-Reply-To: <20190923143620.29334-7-valentin.schneider@arm.com>
Message-ID: <alpine.DEB.2.21.9999.1910081750550.32458@viisi.sifive.com>
References: <20190923143620.29334-1-valentin.schneider@arm.com>
 <20190923143620.29334-7-valentin.schneider@arm.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_175123_190331_B6C75058 
X-CRM114-Status: UNSURE (   7.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-riscv@lists.infradead.org, Palmer Dabbelt <palmer@sifive.com>,
 linux-kernel@vger.kernel.org, Albert Ou <aou@eecs.berkeley.edu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 23 Sep 2019, Valentin Schneider wrote:

> Since the enabling and disabling of IRQs within preempt_schedule_irq()
> is contained in a need_resched() loop, we don't need the outer arch
> code loop.
> 
> Reviewed-by: Palmer Dabbelt <palmer@sifive.com>
> Signed-off-by: Valentin Schneider <valentin.schneider@arm.com>
> Cc: Albert Ou <aou@eecs.berkeley.edu>
> Cc: linux-riscv@lists.infradead.org

Thanks, queued for v5.4-rc.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
