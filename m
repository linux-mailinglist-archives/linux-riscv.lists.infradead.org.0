Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58AF8A0E69
	for <lists+linux-riscv@lfdr.de>; Thu, 29 Aug 2019 01:44:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x0BJtK5jE6skMPWpkYfu9XmywoTwWB3vjD7jbBnqnLI=; b=OE4KlIvstTUoGx
	AQRjB94G3Bck+bm2Xuud8E1PWdvLKlXj035KZQEbkFTqhBnvgJcQv9vv5te7Nxcnp4e2qRSACUrSY
	9rx3FRmumbya3XnW/3kbAfF+askJZerMm6fCSONfb8Y1YnMek4CZmhwsOJ7oaWqIiKDYIuS9/Zayh
	jjmzcameNK8Zd/hWuimdtk16ZCgiWmuNrfnZ40+15iJVimsDd51M5QA5basMsUCrE8aFvS1IVxGZ1
	Mq1fWii+2jgtcaSEIW4L+LlGSKW6booE+iUCmqh9L8vnzqJ0A+NRynJPGmcsJI+WGetXkXWq2MKBq
	hl1eFUBAUsBk1/pgqgTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i37c3-0005Ls-ET; Wed, 28 Aug 2019 23:44:27 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i37c0-0005Lb-WB
 for linux-riscv@lists.infradead.org; Wed, 28 Aug 2019 23:44:26 +0000
Received: by mail-pf1-x444.google.com with SMTP id y9so784641pfl.4
 for <linux-riscv@lists.infradead.org>; Wed, 28 Aug 2019 16:44:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=v+7Vi0K+7iSjD64GjXiDvUOi+ZQN8cBfyBO0kWUqTAo=;
 b=lF/ZY7bIW43kPygO0eYojMdmyC7EdSWTlC9x4AJsKje+Nph5f5KWl56qJUptdakavf
 3+VDYA9HoxjM2CxX7RveAOQ6cYpyLK7PcCGUnKa9xcsEa9/CsVN0BL9Hxe3VXpvggtia
 fXrDMrD7JO7Zraw6pd2yZtpnDgWouvtCHOO9c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=v+7Vi0K+7iSjD64GjXiDvUOi+ZQN8cBfyBO0kWUqTAo=;
 b=P2YHwvQNSevhOAfx6owHmDl4vvoVbxi8+20cqV+KT8sfKecAi/PUDLCcXv1gholydA
 t/93PuqPyb5gpV0HChdugiNRsB6ganrTulos+zPz3syMM1HqoNGQCdE5ohH/YAtahkuJ
 0nem1OzO2B/QzzyDbMqYit+5FYmwh+3qY/8OtXi5FkXuYSioYH9VfnF/g6RSb9GDEuO8
 LkZf1fra8TFcIU8GdiZweHJTiu4qokjt7CGNspuRJfkE6ZmW+OG2ClxWvLESw6HWQIsu
 97wG9e8cIZ13yfMbHRY59npyO9QfKebo+B4TYpIgp4tLq/8Mjh+6qf+M51ttsjjcW9Td
 drIw==
X-Gm-Message-State: APjAAAUKaYMF8yqvcXwtlXKD6uh2AX4A7B4yUya4AC3LynZQ2HbhoOJm
 hUfrA6TUlcyY0E4hGwQy3SiXRpla5QY=
X-Google-Smtp-Source: APXvYqxxx4925TvYESBbl7jTNbgz0DAnFrfbfZvXEyhrWpWa33PYoRop2V/NoIg6VNwG32B8ZouAmQ==
X-Received: by 2002:a63:3dcd:: with SMTP id k196mr5739639pga.45.1567035864264; 
 Wed, 28 Aug 2019 16:44:24 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id t4sm586675pfq.153.2019.08.28.16.44.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Aug 2019 16:44:23 -0700 (PDT)
Date: Wed, 28 Aug 2019 16:44:21 -0700
From: Kees Cook <keescook@chromium.org>
To: David Abdurachmanov <david.abdurachmanov@gmail.com>
Subject: Re: [PATCH v2] riscv: add support for SECCOMP and SECCOMP_FILTER
Message-ID: <201908281643.1B89EB1E6@keescook>
References: <20190822205533.4877-1-david.abdurachmanov@sifive.com>
 <201908251451.73C6812E8@keescook>
 <CAEn-LToB1atxDvehBanVaxg6sk8zDkMe_CbqeTVgKNzOvD9-Sw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAEn-LToB1atxDvehBanVaxg6sk8zDkMe_CbqeTVgKNzOvD9-Sw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_164425_061918_3F13134F 
X-CRM114-Status: UNSURE (   7.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Song Liu <songliubraving@fb.com>, Alan Kao <alankao@andestech.com>,
 Palmer Dabbelt <palmer@sifive.com>, Alexei Starovoitov <ast@kernel.org>,
 Oleg Nesterov <oleg@redhat.com>, linux-kselftest@vger.kernel.org,
 linux-riscv@lists.infradead.org, Shuah Khan <shuah@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Yonghong Song <yhs@fb.com>,
 me@carlosedp.com, Albert Ou <aou@eecs.berkeley.edu>,
 Alexios Zavras <alexios.zavras@intel.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
 Allison Randal <allison@lohutok.net>, Will Drewry <wad@chromium.org>,
 David Abdurachmanov <david.abdurachmanov@sifive.com>, netdev@vger.kernel.org,
 Anup Patel <Anup.Patel@wdc.com>, linux-kernel@vger.kernel.org,
 Andy Lutomirski <luto@amacapital.net>, Vincent Chen <vincentc@andestech.com>,
 bpf@vger.kernel.org, Martin KaFai Lau <kafai@fb.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Aug 28, 2019 at 02:37:34PM -0700, David Abdurachmanov wrote:
>     --disk path=$PWD/disk \
>     --boot kernel=$PWD/${FIRMWARE} \

This is where I tripped over things. How do I specify the kernel to boot
from OUTSIDE the disk image?

-- 
Kees Cook

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
