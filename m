Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF62612FF76
	for <lists+linux-riscv@lfdr.de>; Sat,  4 Jan 2020 01:16:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:References:Message-ID:In-Reply-To:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RIuIVfrtLNNAiQWfhBPKfzpkRqoqLkA3Gbkp2W9uaMc=; b=IHoyLVV7ns/WXDqvJjTkeJek4
	UoFO3kmu2Mp2fcPayyi8qZvLDIAkeIP12EHQTWqnoXEbGG4Y7aUSt9TmwQD+FDtXL9pmEOdHQ4PlF
	zSCUvAODZcl9lACuc0jm7KQHbucBGpXD0rihphscFfJ9ydjGdgdkTIU1ra0ATCmRB6fz0MfmzV2xP
	sDmM1JsCWFSFJQuF7WIBa2ccN2mwbQKeHygnljiAEVPe/7RuYFG7IlLUbCnbbP6EqhnrJjV9TYESD
	IjF9wc2ZiBHA49VR6wmQZwzXokxuZt8WUrEt3FbcGWt5XHShxrVKhi6OCaCAMhxQ3xwv2eOOWECX5
	FRdMz2Ukg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inX71-0006An-R7; Sat, 04 Jan 2020 00:16:15 +0000
Received: from mail-il1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inX6x-0006A0-Bi
 for linux-riscv@lists.infradead.org; Sat, 04 Jan 2020 00:16:12 +0000
Received: by mail-il1-x142.google.com with SMTP id t8so38012200iln.4
 for <linux-riscv@lists.infradead.org>; Fri, 03 Jan 2020 16:16:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=RIuIVfrtLNNAiQWfhBPKfzpkRqoqLkA3Gbkp2W9uaMc=;
 b=cEa3vrOjQzP1RRyZickGPt9aNoGbQtU+fWZSCZXQjNGUio6oEaZVzE08Wp0o/d7LZp
 BOJIWAHWNdatUJjdL5dul9Wl4TzRM5SSZuEHyj9JNI2Cecmmb36O25kCu8wvqmDDEvXq
 NOaQmDfxmPD5jrsKAhP4brsYT8+R3rcNCUnSSM7u+dfOnHIA8ziN5hQ66+OvcLspVgEt
 RUA1DHOg8fWBJUxoC/BEQymAro4k8y02UazMzNNmPNIZJg8MRBOn6C27Gypzcj3IrOPD
 waHQCUpwzqHhXVJbUBClexG9/5j+fC37eakd5I8NbsYN2UzbNiyWcLw08BTK9so4CGJy
 R4oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=RIuIVfrtLNNAiQWfhBPKfzpkRqoqLkA3Gbkp2W9uaMc=;
 b=CI1zAlx4//rrB23qf7ijaKBJIJwlQCDGA80wB43R9pT2g5JGwQ92bHhhp/tlUBIkMF
 8TMOYnh5guMsfs9AXhb+qgMz6jG5q5VI/DNPRGyBHpoqvkrmRA3Bos/IAoihh+ExxLTC
 +Ek0GAAHkVo+PnZPVyu67RwYHvWi+Grp62bnkastLMa9yeH9uwRSYxcUUFmpScIkT/Dw
 BAkOCiO1Wd94IrlIW2tYONAMYD4BL+d5D0QAebkVO3XG0mcLLlZhl1AJ8WQ8qhUE+XfW
 q/FJjAkQRXrsAVe/m8QwPQTHYy2LJC00sBWFaECO8jJosvMo6WMY68xVKzGniCKpCrr6
 YYiw==
X-Gm-Message-State: APjAAAVfKWP00SZXMP6FZPs4srQmHZbSkY4Io3du7MgYMjo92ZlycEYM
 s/GBHdj6/BEtRxQgMNt76tyMeQ==
X-Google-Smtp-Source: APXvYqxkrVblXVx0hs2/Nq99Phv4hhYCekQHGzSYfABZIS29YvXZZ98C6UocOym5iQzvXtjKas8Ljg==
X-Received: by 2002:a92:58d7:: with SMTP id z84mr73885881ilf.179.1578096970132; 
 Fri, 03 Jan 2020 16:16:10 -0800 (PST)
Received: from localhost ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id s17sm9609596iob.81.2020.01.03.16.16.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Jan 2020 16:16:09 -0800 (PST)
Date: Fri, 3 Jan 2020 16:16:07 -0800 (PST)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Zong Li <zong.li@sifive.com>
Subject: Re: [PATCH 2/2] clocksource/drivers/riscv: add notrace to
 riscv_sched_clock
In-Reply-To: <20191223084614.67126-3-zong.li@sifive.com>
Message-ID: <alpine.DEB.2.21.9999.2001031614370.283180@viisi.sifive.com>
References: <20191223084614.67126-1-zong.li@sifive.com>
 <20191223084614.67126-3-zong.li@sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_161611_449446_4AFA975E 
X-CRM114-Status: GOOD (  15.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: anup@brainfault.org, linux-riscv@lists.infradead.org, palmer@dabbelt.com,
 linux-kernel@vger.kernel.org, rostedt@goodmis.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 23 Dec 2019, Zong Li wrote:

> When enabling ftrace graph tracer, it gets the tracing clock in
> ftrace_push_return_trace. Eventually, it invokes the riscv_sched_clock to
> get the clock. If add mcount instrument in riscv_sched_clock, it will
> call ftrace_push_return_trace and cause infinite loop.
> 
> The result of failure as follow:
> 
> command: echo function_graph >current_tracer
> [   46.176787] Unable to handle kernel paging request at virtual address ffffffe04fb38c48
> [   46.177309] Oops [#1]
> [   46.177478] Modules linked in:
> [   46.177770] CPU: 0 PID: 256 Comm: $d Not tainted 5.5.0-rc1 #47
> [   46.177981] epc: ffffffe00035e59a ra : ffffffe00035e57e sp : ffffffe03a7569b0
> [   46.178216]  gp : ffffffe000d29b90 tp : ffffffe03a756180 t0 : ffffffe03a756968
> [   46.178430]  t1 : ffffffe00087f408 t2 : ffffffe03a7569a0 s0 : ffffffe03a7569f0
> [   46.178643]  s1 : ffffffe00087f408 a0 : 0000000ac054cda4 a1 : 000000000087f411
> [   46.178856]  a2 : 0000000ac054cda4 a3 : 0000000000373ca0 a4 : ffffffe04fb38c48
> [   46.179099]  a5 : 00000000153e22a8 a6 : 00000000005522ff a7 : 0000000000000005
> [   46.179338]  s2 : ffffffe03a756a90 s3 : ffffffe00032811c s4 : ffffffe03a756a58
> [   46.179570]  s5 : ffffffe000d29fe0 s6 : 0000000000000001 s7 : 0000000000000003
> [   46.179809]  s8 : 0000000000000003 s9 : 0000000000000002 s10: 0000000000000004
> [   46.180053]  s11: 0000000000000000 t3 : 0000003fc815749c t4 : 00000000000efc90
> [   46.180293]  t5 : ffffffe000d29658 t6 : 0000000000040000
> [   46.180482] status: 0000000000000100 badaddr: ffffffe04fb38c48 cause: 000000000000000f
> 
> Signed-off-by: Zong Li <zong.li@sifive.com>

Thanks; below is what's been queued for v5.5-rc.


- Paul


From: Zong Li <zong.li@sifive.com>
Date: Mon, 23 Dec 2019 16:46:14 +0800
Subject: [PATCH 1/2] clocksource/drivers/riscv: add notrace to
 riscv_sched_clock

When enabling ftrace graph tracer, it gets the tracing clock in
ftrace_push_return_trace().  Eventually, it invokes riscv_sched_clock()
to get the clock value.  If riscv_sched_clock() isn't marked with
'notrace', it will call ftrace_push_return_trace() and cause infinite
loop.

The result of failure as follow:

command: echo function_graph >current_tracer
[   46.176787] Unable to handle kernel paging request at virtual address ffffffe04fb38c48
[   46.177309] Oops [#1]
[   46.177478] Modules linked in:
[   46.177770] CPU: 0 PID: 256 Comm: $d Not tainted 5.5.0-rc1 #47
[   46.177981] epc: ffffffe00035e59a ra : ffffffe00035e57e sp : ffffffe03a7569b0
[   46.178216]  gp : ffffffe000d29b90 tp : ffffffe03a756180 t0 : ffffffe03a756968
[   46.178430]  t1 : ffffffe00087f408 t2 : ffffffe03a7569a0 s0 : ffffffe03a7569f0
[   46.178643]  s1 : ffffffe00087f408 a0 : 0000000ac054cda4 a1 : 000000000087f411
[   46.178856]  a2 : 0000000ac054cda4 a3 : 0000000000373ca0 a4 : ffffffe04fb38c48
[   46.179099]  a5 : 00000000153e22a8 a6 : 00000000005522ff a7 : 0000000000000005
[   46.179338]  s2 : ffffffe03a756a90 s3 : ffffffe00032811c s4 : ffffffe03a756a58
[   46.179570]  s5 : ffffffe000d29fe0 s6 : 0000000000000001 s7 : 0000000000000003
[   46.179809]  s8 : 0000000000000003 s9 : 0000000000000002 s10: 0000000000000004
[   46.180053]  s11: 0000000000000000 t3 : 0000003fc815749c t4 : 00000000000efc90
[   46.180293]  t5 : ffffffe000d29658 t6 : 0000000000040000
[   46.180482] status: 0000000000000100 badaddr: ffffffe04fb38c48 cause: 000000000000000f

Signed-off-by: Zong Li <zong.li@sifive.com>
Reviewed-by: Steven Rostedt (VMware) <rostedt@goodmis.org>
[paul.walmsley@sifive.com: cleaned up patch description]
Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
---
 drivers/clocksource/timer-riscv.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clocksource/timer-riscv.c b/drivers/clocksource/timer-riscv.c
index 4e54856ce2a5..c4f15c4068c0 100644
--- a/drivers/clocksource/timer-riscv.c
+++ b/drivers/clocksource/timer-riscv.c
@@ -56,7 +56,7 @@ static unsigned long long riscv_clocksource_rdtime(struct clocksource *cs)
 	return get_cycles64();
 }
 
-static u64 riscv_sched_clock(void)
+static u64 notrace riscv_sched_clock(void)
 {
 	return get_cycles64();
 }
-- 
2.24.0


