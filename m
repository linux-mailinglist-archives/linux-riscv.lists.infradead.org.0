Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 038B41E237C
	for <lists+linux-riscv@lfdr.de>; Tue, 26 May 2020 16:01:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=86WQURgCqAHa0WXNLzZX28I5KUeKUOWQEKAQ4Gpwaf0=; b=psAK1dz82EJdcd+HeuK2KTqYf
	x2RTEbZLeqSndAX9Haxe19KkEFXr8lxkrPQ675Q6HzIDja2/SllPvr5ObPyvNXwYd7QjGOOTkcDrg
	tWW2d7qLDiviVhoj8O5mC1iZzI0cj9XJT9s1PzHSCcTCJ1LnsQ2qGlZPExcuhYgH6WasdI5F4wWy2
	vbOhkYFiWfG/fGf0bhqCP8d8lctgLJG+F8HtRRpb+BbtO7PhlPMED0MGLouHSMRJKAUJxndY1GsJg
	DYj4/Gv8+gSbAweFiiHmrG42f/tyWCEwdzNGcciCIqv5wlcLUHJJ4ZmSqYOd3l9HB3l0ROrZD7JHG
	oK1XGLQrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jda8w-0001p2-70; Tue, 26 May 2020 14:01:22 +0000
Received: from merlin.infradead.org ([205.233.59.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jda8u-0001ov-1n
 for linux-riscv@bombadil.infradead.org; Tue, 26 May 2020 14:01:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=86WQURgCqAHa0WXNLzZX28I5KUeKUOWQEKAQ4Gpwaf0=; b=uJSHf81edvoL3UFakWPXwvv1JU
 BUaWV9PRWHh89BivzW3JVzOp+0lyxhqfJTkqCDnCMC4XMlleAv2WSCK2ktmRJvvuETH+4EyLuxAy2
 LYr+gmx5sokTZQRdefTRoSRKTbeo9CXw5l//genzB8BHZ3Ad1yJzuFlkqweXSc5xH0wP76I2arBTr
 GZeUHI63KAsqXumhkuibPyNmzZNNWBwCtIU/Uv40lkEBoBb9GIhS64HVJjmmTP+oQ3S0198TsBPT2
 t5dXTLAFFk1+U1v0QRrS6rgN7+7/iOmpojv3pVcuc+RKg5emrXzZdpfRNu1lW7NbGbkIt3D6RguwU
 3qMHU0uw==;
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jda8s-0001yc-RO
 for linux-riscv@lists.infradead.org; Tue, 26 May 2020 14:01:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1590501634;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=86WQURgCqAHa0WXNLzZX28I5KUeKUOWQEKAQ4Gpwaf0=;
 b=HJEiTk4YZqJMy6sdw5QQIEU5mIbJZbbq1/K4pK8wCo+X04rlMEwY5TFXdhTlXp26Jg1+7i
 dVaH2l9iaF4oCi6gDdgxpYBvHQ1MSyoPDMXwDsvWr/psZibrlvmhsUOBGLNQN4ar99i/Kq
 /WqvIsJlIKEHKSwNS83lRvMS9SQ/UWw=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1590501677;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=86WQURgCqAHa0WXNLzZX28I5KUeKUOWQEKAQ4Gpwaf0=;
 b=CVDriqA7rX7EaIp6Y5Ec5HY+K6Ddrbispip9BFaLJgmmfHoPk2qvy/9K1mPkTLFFF/4n6d
 Q4VhMh+BczdZzNv1Ry3p6mKFf0u56cLIkizSPqt9T231lOQMNZ3O0JtS0datoO0w1SqyFx
 91dHWd87qFj1pVhFxiPUuvp7gvCGZik=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-160-OvaMsk5FP-u0DBdNEz45pQ-1; Tue, 26 May 2020 10:00:32 -0400
X-MC-Unique: OvaMsk5FP-u0DBdNEz45pQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B8357100CD14;
 Tue, 26 May 2020 14:00:30 +0000 (UTC)
Received: from dhcp-27-174.brq.redhat.com (unknown [10.40.193.170])
 by smtp.corp.redhat.com (Postfix) with SMTP id 3210460E1C;
 Tue, 26 May 2020 14:00:29 +0000 (UTC)
Received: by dhcp-27-174.brq.redhat.com (nbSMTP-1.00) for uid 1000
 oleg@redhat.com; Tue, 26 May 2020 16:00:30 +0200 (CEST)
Date: Tue, 26 May 2020 16:00:28 +0200
From: Oleg Nesterov <oleg@redhat.com>
To: Greentime Hu <greentime.hu@sifive.com>
Subject: Re: [RFC PATCH v4 01/13] ptrace: Use regset_size() for dynamic
 regset size.
Message-ID: <20200526140027.GC24212@redhat.com>
References: <cover.1590474856.git.greentime.hu@sifive.com>
 <3700190a602a6d30fcbf76e1eea667e29a65c4c9.1590474856.git.greentime.hu@sifive.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3700190a602a6d30fcbf76e1eea667e29a65c4c9.1590474856.git.greentime.hu@sifive.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on merlin.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [205.139.110.120 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: guoren@linux.alibaba.com, palmerdabbelt@google.com,
 linux-kernel@vger.kernel.org, vincent.chen@sifive.com,
 paul.walmsley@sifive.com, linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 05/26, Greentime Hu wrote:
>
> @@ -882,13 +882,18 @@ static int ptrace_regset(struct task_struct *task, int req, unsigned int type,
>  	const struct user_regset_view *view = task_user_regset_view(task);
>  	const struct user_regset *regset = find_regset(view, type);
>  	int regset_no;
> +	unsigned int size;
>
> -	if (!regset || (kiov->iov_len % regset->size) != 0)
> +	if (!regset)
>  		return -EINVAL;
>
>  	regset_no = regset - view->regsets;
> -	kiov->iov_len = min(kiov->iov_len,
> -			    (__kernel_size_t) (regset->n * regset->size));
> +	size = regset_size(task, regset);
> +
> +	if ((kiov->iov_len % size) != 0)
> +		return -EINVAL;

Hmm. this doesn't look right.

Before this patch we check "iov_len % regset->size", this is not the same
as "iov_len % regset_size()".

IOW, currently you can read/write, say, only the 1st register, you patch
breaks this?

Oleg.


