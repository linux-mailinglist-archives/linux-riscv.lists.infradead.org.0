Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2DCC9D941
	for <lists+linux-riscv@lfdr.de>; Tue, 27 Aug 2019 00:35:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+UcMGC4yeIGzvj+xbXtF13d2fvowY/X6ahprG02cO+E=; b=uaOzs/MyB5HjXW
	+VQaFAyRTP/zGmNVxz8FiE2karDPsNmKLzjmjpTHmZ2ZltrztgYf1VvVq2DEMMt0013m5ACuIUmkL
	/70HvSMg0DsXur3B0+wgBpRApiyGB/lcMgfP1mCYvV4Pc2ZVjIdVU04XemhWanHCfDWPqtou+1ta+
	IQDcV9jL47JojOTng0aYvn932MgTyWSbmlxp9/kSYQoqmA+ENLlHpIqvDZGvUCSxNDYcF/3NMEN+0
	QE9oeTN9oIodupGtYG9BzGQ0par2Q+WLyXddlPIbOF2Av+ReL//RtINQZLZaBg+qXjUAMsCR8Kmdu
	9SwLNcDHVR7dYcmLjJUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2NaG-0001ys-SN; Mon, 26 Aug 2019 22:35:33 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2NZy-0001nX-01; Mon, 26 Aug 2019 22:35:15 +0000
Received: by mail-pf1-x441.google.com with SMTP id w26so12701124pfq.12;
 Mon, 26 Aug 2019 15:35:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ZTtLxIEFBiFvvirLNk7rJCpHyKJsG3UuT12vwumOc6c=;
 b=V4Yj/mgKIET0UoJp2BRwZVUfM8V2AmczCU0x1SnvT/ZOx56IgJ9BD2GVGSi/vhq8VT
 fCApXRmB4ctSw9Qja4Kg0K+GcJl8Q6DdxLSq+q61/ftTv9i5CG6gwcSj3xiWeRzQ1qWl
 KifPe7A7QjANncPafKhoJI2VCx5usWEIbMg0ZGE/I7ZdFFUTesd1FXWT2Q07SZVnGF/Y
 1IDGhaTKkYwZyw0MpgLx9S1ru+lG8BGfGNGS/7INVWaXjpxI9Pp2t+OVu436nKa8238G
 oNqZKQK8uVFD/nAamPO86nU17D7TwmRoXDUF53i42+GF5eIES6p9m9cXmSCrdSiQLsco
 z2KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ZTtLxIEFBiFvvirLNk7rJCpHyKJsG3UuT12vwumOc6c=;
 b=ERLmc1TSaM7MoGr4Kuj19R+/lAstdyM8/8rQNxqSYuvEcNGvQdTlURyyru6H/kv8ML
 z1NrQD+LQ+ASMKvsLcDajZQnDuZV1BJKfoQCXA89fMzuhLuL1IM2NL9V0X7tgje4ZY27
 2cyu+kIdYn5QkgfVMrQk4o0tZzAMPLSJxKIRuVzbJSzM5tF4LAyM3Yll8P1UdxAgsqqQ
 BOYAevF4uMf6h2HP0unvrvYIev0aFidbr9iG36R8pyuCLWBonk5YjDsKdnly/QqNaoct
 dWsAidFASgrbsosZ2IBTy+GD2KROoXK3fV/tf3hMmaoZLsT7yIc5YCgEogcRxd/dosvm
 /JTA==
X-Gm-Message-State: APjAAAUp71fti0OBKV4QTjV7POVpcyAaELZq2LK8MzxVvYlRMzjGaKqi
 cX3h+VvK3qqcTrZtqSIrgWk=
X-Google-Smtp-Source: APXvYqx9fB2zz3reQwDJm1c/UTcOst3U1UlmTMEEGuwoeB+hHpMqnGwoyiFnFyuGEv6PeBIfrwI1hg==
X-Received: by 2002:a65:62d7:: with SMTP id m23mr18488160pgv.358.1566858912811; 
 Mon, 26 Aug 2019 15:35:12 -0700 (PDT)
Received: from mail.google.com ([149.28.153.17])
 by smtp.gmail.com with ESMTPSA id s5sm474687pjo.26.2019.08.26.15.35.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Aug 2019 15:35:12 -0700 (PDT)
Date: Tue, 27 Aug 2019 06:35:02 +0800
From: Changbin Du <changbin.du@gmail.com>
To: Peter Zijlstra <peterz@infradead.org>
Subject: Re: [PATCH 05/11] ftrace: create memcache for hash entries
Message-ID: <20190826223501.ymj3g4ftrf5eqhzq@mail.google.com>
References: <20190825132330.5015-1-changbin.du@gmail.com>
 <20190825132330.5015-6-changbin.du@gmail.com>
 <20190826074437.GM2369@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190826074437.GM2369@hirez.programming.kicks-ass.net>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_153514_042644_387DB9B8 
X-CRM114-Status: GOOD (  18.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (changbin.du[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 linux-parisc@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>,
 linux-sh@vger.kernel.org, x86@kernel.org, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Steven Rostedt <rostedt@goodmis.org>,
 linux-mips@vger.kernel.org, Ingo Molnar <mingo@redhat.com>,
 Jessica Yu <jeyu@kernel.org>, sparclinux@vger.kernel.org,
 linux-kbuild@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 linuxppc-dev@lists.ozlabs.org, linux-riscv@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Changbin Du <changbin.du@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Aug 26, 2019 at 09:44:37AM +0200, Peter Zijlstra wrote:
> On Sun, Aug 25, 2019 at 09:23:24PM +0800, Changbin Du wrote:
> > When CONFIG_FTRACE_FUNC_PROTOTYPE is enabled, thousands of
> > ftrace_func_entry instances are created. So create a dedicated
> > memcache to enhance performance.
> > 
> > Signed-off-by: Changbin Du <changbin.du@gmail.com>
> > ---
> >  kernel/trace/ftrace.c | 17 ++++++++++++++++-
> >  1 file changed, 16 insertions(+), 1 deletion(-)
> > 
> > diff --git a/kernel/trace/ftrace.c b/kernel/trace/ftrace.c
> > index a314f0768b2c..cfcb8dad93ea 100644
> > --- a/kernel/trace/ftrace.c
> > +++ b/kernel/trace/ftrace.c
> > @@ -94,6 +94,8 @@ struct ftrace_ops *function_trace_op __read_mostly = &ftrace_list_end;
> >  /* What to set function_trace_op to */
> >  static struct ftrace_ops *set_function_trace_op;
> >  
> > +struct kmem_cache *hash_entry_cache;
> > +
> >  static bool ftrace_pids_enabled(struct ftrace_ops *ops)
> >  {
> >  	struct trace_array *tr;
> > @@ -1169,7 +1171,7 @@ static int add_hash_entry(struct ftrace_hash *hash, unsigned long ip,
> >  {
> >  	struct ftrace_func_entry *entry;
> >  
> > -	entry = kmalloc(sizeof(*entry), GFP_KERNEL);
> > +	entry = kmem_cache_alloc(hash_entry_cache, GFP_KERNEL);
> >  	if (!entry)
> >  		return -ENOMEM;
> >  
> > @@ -6153,6 +6155,15 @@ void __init ftrace_init(void)
> >  	if (ret)
> >  		goto failed;
> >  
> > +	hash_entry_cache = kmem_cache_create("ftrace-hash",
> > +					     sizeof(struct ftrace_func_entry),
> > +					     sizeof(struct ftrace_func_entry),
> > +					     0, NULL);
> > +	if (!hash_entry_cache) {
> > +		pr_err("failed to create ftrace hash entry cache\n");
> > +		goto failed;
> > +	}
> 
> Wait what; you already have then in the binary image, now you're
> allocating extra memory for each of them?
>
No, here we only allocate ftrace hash entries. The prototype data is not copied.
The entry->priv points to prototype data in binary.

> Did you look at what ORC does? Is the binary search really not fast
> enough?
For ftrace, binary search is not enough. Just like the hash tables
(ftrace_graph_notrace_hash, ftrace_graph_hash) we already have which is used to
filter traced functions.


-- 
Cheers,
Changbin Du

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
