Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30198F1B76
	for <lists+linux-riscv@lfdr.de>; Wed,  6 Nov 2019 17:40:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i77rMSxREABSLBv+ymf+kwAsQNrJe8dDaapBfVM1NjQ=; b=uTwqmiwFvL0j+D
	5C7GSuAGdns8UgROVJbxkoQofigcQc1L4BdK/qSCQ1kMGisB+gadHk1wshPRBsLUkds4RUyZUx2+U
	IZDC4iaBUFJcRotPCMUSZTCqnB3yZcHA+y6NUnd/6zmvOf8WGr3lEppEfn98YoQspCpFHtM+K2Crm
	2p9IGn2+GTgXwMGL93TzgMmox5/Wk8y/0tBoO4QNMqaXSJkKzVc1zjq4Q8KXbxDspc4r3ArN4Cfy3
	/OA5fwn0Yo7gHCmmExmy+JCgW27K3SbUK0vQFL99qaZtU9oDiafmGM2TnpsPJtYC/s6uoDtCGbJpT
	degfQLL1mPcoGmsczpFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSOLi-0001hm-HH; Wed, 06 Nov 2019 16:40:02 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSOLe-0001gr-3T
 for linux-riscv@lists.infradead.org; Wed, 06 Nov 2019 16:39:59 +0000
Received: by mail-pl1-x641.google.com with SMTP id k7so11698606pll.1
 for <linux-riscv@lists.infradead.org>; Wed, 06 Nov 2019 08:39:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=googlenew;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=h+8AXOejPKtSX84fzeR4pP1AIGKjnaVzTWbF4IpDTlY=;
 b=aZjOEKuwvk4LUjS0Pg/iyqv8fUwr+4Eqr4VNsOuYqjPBPirNxvv5KtXr/6+DvhEEeS
 fmtm+BfBI6Fgt3CeqBDIV/tP+8GstwQh0JsjJ3sYRdaIk0GLhOwMvca5Ymb8nyz5sCB8
 bhaQzrbAb+6CErGpjDhkRIjrO5rlEPsDprWki5Fb2Mum/9MbX9Jf95N6JsliyllKSJVI
 Il7Rovp8XoqxkTcJcmJjRSncQE73tk/DeDoYM/TjrvEBhtbrtNoyTrcJLbJRh7+3wUG2
 FTBbSr+lLJZwiQA0K1a6KQpZqVbUp7Vc8DofHhprXygu6WGOo7KWvqM7uY4vVgFlF9/9
 qKPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=h+8AXOejPKtSX84fzeR4pP1AIGKjnaVzTWbF4IpDTlY=;
 b=aptX8YC+3FSTkV6RHPL9HcuPPioYHkAwr2Zk9WIdD+2hPPl9aEiU3UIW7DlLS7YTX+
 KJkKgMghfzpGYAfgRVO0OdkKwaz6spD8Di41JC32RC/9jISZoFK+o48Nyc8n3cS2y+kw
 lH2Sx+gA2iDq83H/Fbfa/wCgJKQeLBeUbh8KpOdjkVXNeaKBrRCefBCvg7sJi3QR4yAL
 SWghBG8gT+fDweSGlHW88mjPaMbhsnlpJ1VTY+0gtV3MQWERKzfgmyxxhSsSkqjmaGhu
 QszwRLRX+N85tqGxyqeEZcQ/BqjvwFunNzpJLLT+ooLChujUvQfbjuPBFSowDKZKiIWi
 PMhw==
X-Gm-Message-State: APjAAAUMklSb+ixanzT4J223w9h+h+6o4aCpsfSmZ9SWkt9fmEZb9EQl
 aNKgQNa2rFyaMlXWQvIn8lWLuw==
X-Google-Smtp-Source: APXvYqywfR9UQlZvtVaHdkOoCsd877Kid/BBKE9QMojVPiD4B1uPWPELoLK/DLKCNhVOxuK2oHgGlQ==
X-Received: by 2002:a17:902:8647:: with SMTP id
 y7mr2024671plt.285.1573058397431; 
 Wed, 06 Nov 2019 08:39:57 -0800 (PST)
Received: from [10.83.36.153] ([217.173.96.166])
 by smtp.gmail.com with ESMTPSA id y26sm13229647pfo.76.2019.11.06.08.39.51
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 06 Nov 2019 08:39:56 -0800 (PST)
Subject: Re: [PATCH 01/50] kallsyms/printk: Add loglvl to print_ip_sym()
To: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
References: <20191106030542.868541-1-dima@arista.com>
 <20191106030542.868541-2-dima@arista.com>
 <20191106043851.GA131976@google.com>
From: Dmitry Safonov <dima@arista.com>
Message-ID: <65ef777b-ceb0-09d7-6fb0-fb79328ad87d@arista.com>
Date: Wed, 6 Nov 2019 16:39:43 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191106043851.GA131976@google.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_083958_146953_0873157A 
X-CRM114-Status: GOOD (  11.52  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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

Hi Sergey,

On 11/6/19 4:38 AM, Sergey Senozhatsky wrote:
> On (19/11/06 03:04), Dmitry Safonov wrote:
> [..]
>> diff --git a/kernel/sched/core.c b/kernel/sched/core.c
>> index dd05a378631a..774ff0d8dfe9 100644
>> --- a/kernel/sched/core.c
>> +++ b/kernel/sched/core.c
>> @@ -3858,7 +3858,7 @@ static noinline void __schedule_bug(struct task_struct *prev)
>>  	if (IS_ENABLED(CONFIG_DEBUG_PREEMPT)
>>  	    && in_atomic_preempt_off()) {
>>  		pr_err("Preemption disabled at:");
>> -		print_ip_sym(preempt_disable_ip);
>> +		print_ip_sym(KERN_ERR, preempt_disable_ip);
>>  		pr_cont("\n");
> 
> Is this working with pr_cont()?

print_ip_sym() will cause log_store()..
And pr_cont("\n") will go here:
:	/* Skip empty continuation lines that couldn't be added - they just
flush */
:	if (!text_len && (lflags & LOG_CONT))
:		return 0;

So it doesn't do anything. I didn't want to change any behavior in the
patch, but seems that I can remove this pr_cont() while at here.

Thanks,
          Dmitry

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
