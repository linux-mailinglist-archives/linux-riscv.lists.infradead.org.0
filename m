Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24D39F0DE1
	for <lists+linux-riscv@lfdr.de>; Wed,  6 Nov 2019 05:39:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y//ewBuMnW4+EqKggjt5g04DsZYxloPA5AzJiH8ctQY=; b=DdoGvlfmvDD+9M
	rXKTK3uMjRDBv2qs4TMM+dJvunPwVWTPxUpk3jooXnjjqNnwsn+Sks8HZAyWZ/KvYOWtsZRe6AvPb
	/kb97fkyV5DvKFloanBDR2LjRr5dwTTY/d+F1sHwThyuUo0s2nf0mbb8EmMt0Zhe1/ibDKMMc/JQV
	xW9aBg4W1QPTAp7XklHJyVSUyreAi9c5ySjF34XKnn2qHxmI544NPlVqZV3Ys0LTYz9oByMivCS5B
	o0p+dSzcGg1hs0rTJrOln1zPegwSdWs0tLm0Nae8uZqYJbJ1G50eXb5XSkD2yQWfXPw+39hHYinTm
	b+JSw0dROqeBmbpGnLeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSD5v-00074e-DV; Wed, 06 Nov 2019 04:38:59 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSD5r-00073z-Rc
 for linux-riscv@lists.infradead.org; Wed, 06 Nov 2019 04:38:57 +0000
Received: by mail-pl1-x641.google.com with SMTP id x6so10822593pln.2
 for <linux-riscv@lists.infradead.org>; Tue, 05 Nov 2019 20:38:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=7V01zh+xuKN9jfSDl1ahnvbuyiRHEuk9/Psk/loZcsc=;
 b=ERM74EzueCUrY7DD9YRMnMl3BPIK4mBaTBFxynZ/aWbqEady7VfI4NAjDyAj7+iIQ5
 RQsqgoasqS4agr75oIh7Tl5hc9WiiVUtYimMeQl32Rb/aI0IwdqEsUMSEmry0hk405Z5
 TtwMBzGiEEAVJv6VSBygU1Wty69JTHrHaurUNWtF4AK0J8qA6Q8beJGlhLICH6z+cir1
 4CbfhjZAuaSwuIxX67mdsHWySCDb4IA332+cM7yRUZ4V1LgeWt2JvmDoY4jWmKw3pcbn
 kL2GHKw5w/+5GXNSQXsTH2a4Of8xaWeGu2DRBIRA8kB2fARaLicInjf9eeGmpKlpROAA
 IUhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=7V01zh+xuKN9jfSDl1ahnvbuyiRHEuk9/Psk/loZcsc=;
 b=ExG2pL3pQ1OwQJkT+0ywEtZjxdvV+3O7KvzsPK5kAr3j205Searmz6nwUrzMPD+n2T
 DICKV5tIZ46cYMidzKBngdKvqmpDW0AuukqMHw9N+bMIjn+IdsqCs6ZAVroiIXl8dOK5
 O+xS8agt8H9yh28gs0kKfqc263QEHM/9WYI135cDVr5yiKF1mj4+AXMOB0/FELKfNiqh
 1uicrLOZ33MdgoGwf800610dH4sLK64DK3D2WmSOHgEaeTYv6L9FlyNZzS6a4KLDj6XS
 sBlJb+2omexct0NdC/ju3RUmsgyJfXyhmCnBo1We0YH0RUXGmt8jKtokmwQhSV51pLY3
 I8Yg==
X-Gm-Message-State: APjAAAV4Z663jlD/e72D7dqMgJUk0x2F2dyq/Ci9R8IKfq0BC3FKBmiY
 NH2iKh+TvbsQVJ2BJLBRgwY=
X-Google-Smtp-Source: APXvYqy/jC4Qc1JZAQO3ZxzldK9w2HMGugt9CwQIfB+u8xFLUZ9B8Zl3gxVf2USX7FyO6dM4ufDePQ==
X-Received: by 2002:a17:902:bcca:: with SMTP id
 o10mr548969pls.46.1573015134663; 
 Tue, 05 Nov 2019 20:38:54 -0800 (PST)
Received: from localhost ([2401:fa00:8f:203:250d:e71d:5a0a:9afe])
 by smtp.gmail.com with ESMTPSA id y2sm22630177pfe.126.2019.11.05.20.38.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 20:38:53 -0800 (PST)
Date: Wed, 6 Nov 2019 13:38:51 +0900
From: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
To: Dmitry Safonov <dima@arista.com>
Subject: Re: [PATCH 01/50] kallsyms/printk: Add loglvl to print_ip_sym()
Message-ID: <20191106043851.GA131976@google.com>
References: <20191106030542.868541-1-dima@arista.com>
 <20191106030542.868541-2-dima@arista.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191106030542.868541-2-dima@arista.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_203855_893212_B4CD0D69 
X-CRM114-Status: GOOD (  11.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sergey.senozhatsky.work[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Juri Lelli <juri.lelli@redhat.com>,
 Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>,
 James Hogan <jhogan@kernel.org>, Dmitry Safonov <0x7f454c46@gmail.com>,
 linux-mips@vger.kernel.org, Ben Segall <bsegall@google.com>,
 linux-riscv@lists.infradead.org, Vincent Chen <deanbo422@gmail.com>,
 Will Deacon <will@kernel.org>, Ingo Molnar <mingo@kernel.org>,
 Vincent Guittot <vincent.guittot@linaro.org>,
 Paul Burton <paulburton@kernel.org>, Peter Zijlstra <peterz@infradead.org>,
 Ingo Molnar <mingo@redhat.com>, Mel Gorman <mgorman@suse.de>,
 Jiri Slaby <jslaby@suse.com>, Petr Mladek <pmladek@suse.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Steven Rostedt <rostedt@goodmis.org>,
 Greentime Hu <green.hu@gmail.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Dietmar Eggemann <dietmar.eggemann@arm.com>, Michal Simek <monstr@monstr.eu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On (19/11/06 03:04), Dmitry Safonov wrote:
[..]
>  #endif /*_LINUX_KALLSYMS_H*/
> diff --git a/kernel/locking/lockdep.c b/kernel/locking/lockdep.c
> index 233459c03b5a..914ff610b880 100644
> --- a/kernel/locking/lockdep.c
> +++ b/kernel/locking/lockdep.c
> @@ -3999,7 +3999,7 @@ static void print_unlock_imbalance_bug(struct task_struct *curr,
>  		curr->comm, task_pid_nr(curr));
>  	print_lockdep_cache(lock);
>  	pr_cont(") at:\n");
> -	print_ip_sym(ip);
> +	print_ip_sym(KERN_WARNING, ip);
>  	pr_warn("but there are no more locks to release!\n");
>  	pr_warn("\nother info that might help us debug this:\n");
>  	lockdep_print_held_locks(curr);
> @@ -4604,7 +4604,7 @@ static void print_lock_contention_bug(struct task_struct *curr,
>  		curr->comm, task_pid_nr(curr));
>  	print_lockdep_cache(lock);
>  	pr_cont(") at:\n");
> -	print_ip_sym(ip);
> +	print_ip_sym(KERN_WARNING, ip);
>  	pr_warn("but there are no locks held!\n");
>  	pr_warn("\nother info that might help us debug this:\n");
>  	lockdep_print_held_locks(curr);
> diff --git a/kernel/sched/core.c b/kernel/sched/core.c
> index dd05a378631a..774ff0d8dfe9 100644
> --- a/kernel/sched/core.c
> +++ b/kernel/sched/core.c
> @@ -3858,7 +3858,7 @@ static noinline void __schedule_bug(struct task_struct *prev)
>  	if (IS_ENABLED(CONFIG_DEBUG_PREEMPT)
>  	    && in_atomic_preempt_off()) {
>  		pr_err("Preemption disabled at:");
> -		print_ip_sym(preempt_disable_ip);
> +		print_ip_sym(KERN_ERR, preempt_disable_ip);
>  		pr_cont("\n");

Is this working with pr_cont()?

	-ss

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
