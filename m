Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78FCB12E1F7
	for <lists+linux-riscv@lfdr.de>; Thu,  2 Jan 2020 04:50:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:Subject:
	Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cO6PVKznnSAM6d/hhV5xCs6Kkc34TVo3fVvX4Ug3jHg=; b=OmT06zf/rtZS+LZr8uiP0R08G
	oJWUj6OIzME3iKCwgDMo3cO7dSfiLQlzH3Tom3VKUVZeNB4ym/nlKydVldLRGlZTmoW7eDeZdqLrZ
	9HyOYaQA3mOcR5/jw/J3raK5vkxYUeQKjBvGqO6MGDRJIiKsKCPX0BkocBcWIRUl6pk72Wwsqj9p+
	m514yBHPY+Y24CjjuffVuY8PRBXQcdLDkkTq6SW/o428Y9bCN4ojsEz6etvuq0wqq8YDpVNG8taXE
	lII410VeVR87BUBDgZag+4gybq37WnBbG9XIj5xKBE9Yi2eU94CF0OWCNj0U4ou9+m2spz60Dj0Fx
	Vps03TrsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imrVK-00007I-KN; Thu, 02 Jan 2020 03:50:34 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imrVI-00006r-Bl
 for linux-riscv@lists.infradead.org; Thu, 02 Jan 2020 03:50:33 +0000
Received: by mail-ot1-x343.google.com with SMTP id p8so18895486oth.10
 for <linux-riscv@lists.infradead.org>; Wed, 01 Jan 2020 19:50:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=cO6PVKznnSAM6d/hhV5xCs6Kkc34TVo3fVvX4Ug3jHg=;
 b=Oq9bx7v0qeiZy3puiVm5NDqrFRfXBpqDtVJ615NJpgp3zKVheoOjCaeutuK5nlf9Wt
 WD5Ga6Q7Gx9aidGArb4qAdxJp86jen0KO95ayCJlV9nR4TgiFVSH++vXWZtg659FvUYL
 Z+lzUMmC/yO6oc8sQ+flCzgtAir6EA2O7Fu9hod3gavb0sNOHTu6oXoXfUjjj7cNqDFS
 rxFSQcMfGn8Db1q+wUHvPxoMeYU+A88HQN/oOKt3UPjiPVFbHLch8GiXXU8T84H9Qmz5
 E46VLLBtEjYx9iAkTHQwJt8mHUz3xgFPSRpFX54fUy/RsJLBS0YuTGQ63OexnyOpTdAT
 ZODQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=cO6PVKznnSAM6d/hhV5xCs6Kkc34TVo3fVvX4Ug3jHg=;
 b=uRJRYhvHkrPMFnohb1mPoXbwoNg5jedfWeuSNPOF/CwKmlcNr/TkoNPNZnFiWBSq4c
 TfeQUPIdtwrFZ+9h6KrGKEQyuIFqXUFJnMaWIuQTlo/u939gJvAAdkKpY5fUgP56U53m
 +Gy0mkTJadbOPVJK/mhF5x43gJEQSqdqCSml4nu+borM0cHUHLhmWDFpkxQzXJodCPbB
 i2mob2pID6Cs/L8xEGjd7mA5iikXbeqNyNeRnsndLKxw7J+c3L3G8EhiVpk2yjfzmA3f
 C89cfMzuZO9qZ6CaMtDdux+daVq4ZMwtrQIZWsqAZymR91jBeCfJ0utJCANVJ0H69p3w
 jE5w==
X-Gm-Message-State: APjAAAWL+kaQyRpJeqczsDCJbtidh8x6BVyXNgpJmj9m8wP0ZJ+5ec7s
 VYtqhIB0kA7uNzVyB3HoInmVwHiX8W7wwYGrdG4vrA==
X-Google-Smtp-Source: APXvYqwh7Ei4wPCDPdjD1UcGJHaq9HDgKEZVV+BaXlYcrf/qdBaIOE6CGfdXDD9qGGv/S+iaU+hosjg2fTlhulLr01c=
X-Received: by 2002:a9d:784b:: with SMTP id c11mr85019992otm.246.1577937031888; 
 Wed, 01 Jan 2020 19:50:31 -0800 (PST)
MIME-Version: 1.0
References: <20191223084614.67126-1-zong.li@sifive.com>
In-Reply-To: <20191223084614.67126-1-zong.li@sifive.com>
From: Zong Li <zong.li@sifive.com>
Date: Thu, 2 Jan 2020 11:50:22 +0800
Message-ID: <CANXhq0qTG-ezdrJpOEd9fhc-_iRL2syASO9KnQxbDfxoVXwfqQ@mail.gmail.com>
Subject: Re: [PATCH 0/2] RISC-V: fixes issues of ftrace graph tracer
To: Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, rostedt@goodmis.org, 
 Anup Patel <anup@brainfault.org>, 
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>, 
 linux-riscv <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200101_195032_401915_67F7A808 
X-CRM114-Status: UNSURE (   8.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Dec 23, 2019 at 4:46 PM Zong Li <zong.li@sifive.com> wrote:
>
> Ftrace graph tracer is broken now, these patches fix the problem of ftrace graph
> tracer and tested on QEMU and HiFive Unleashed board.
>
> Zong Li (2):
>   riscv: ftrace: correct the condition logic in function graph tracer
>   clocksource/drivers/riscv: add notrace to riscv_sched_clock
>
>  arch/riscv/kernel/ftrace.c        | 2 +-
>  drivers/clocksource/timer-riscv.c | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
>
> --
> 2.24.1
>

ping

