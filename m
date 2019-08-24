Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6F109B9B2
	for <lists+linux-riscv@lfdr.de>; Sat, 24 Aug 2019 02:31:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tgqIEPp/wN96dIUI01AXlezoSEiJhMi0t4oOBV41h4c=; b=iU6jZOGLuTq17L
	MoJ7SfYQvrbuFMoZ5+mb4lVzF8GeMJCHTEuEWIIZEOBnLRPu0oKD6llqUR16pmMivE7zXgmpsMXjE
	toTNyEZWUa/vw+iameDMfDLqGsr8NfUQRkxtupLURC2XJgPMWNNydl2jiddmYDninZC/FE89/oYxS
	1f0nodlWwhfk8Rusfvv1XwJ3mChpZwp5N1WvfTgQnqt33fKum3lCcAFh+huJfdUlLIHQ15wjU/BdW
	cqY8GpQUsTQA5Rp8VsT7QjbE+BGKaSRpnas33rn6nnQZF2/X5ZFYTMPoPY5cBYsa+v4/ymHvl1ClX
	ByYN+W1uSzqPg2JziFPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1JxP-0003Ix-P6; Sat, 24 Aug 2019 00:31:03 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1JxH-0003I9-Nr
 for linux-riscv@lists.infradead.org; Sat, 24 Aug 2019 00:30:57 +0000
Received: by mail-pl1-x644.google.com with SMTP id 4so6482090pld.10
 for <linux-riscv@lists.infradead.org>; Fri, 23 Aug 2019 17:30:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=xnR71yxvWSFn7GNIN4j2Fr3rKuwX+n1QmLSLVRDzZPA=;
 b=W2AM6gexTKN/VXcMZcNlCQUd1t7QNxA2cYHEuT6iNPI+LLeisFbLGSp7EFWmfR/GqJ
 ukVzvf47sFPlyUlhrgBgefa3c7ywbe85INX7ypVuklNfnx6nvpvLMTazX+f0PYBsK3j8
 2eFIoiuvEZOQxF2Jqk0NRW4rLxK3k3vp7yuu3KLd805bbiw/GDeFzDlmTkMRh0b+e8u/
 6BdSDVqdKECnS95a+YReAWFtZyA/LxvK8E48vaGRDb5CzKWAI/aSoy+v3zqvrFPazhs2
 BfyBlcWZkL2HrkKyQ5wWUtZpK/NGNqqCX1lpcQrzvqJSlXIl3aUFcEwmhjE1//XwP4sl
 fDOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=xnR71yxvWSFn7GNIN4j2Fr3rKuwX+n1QmLSLVRDzZPA=;
 b=KD4UIbFaafuFJ7Hrn0JdvT9bN52qpmDWNO/E+AxNEh6VhtAkVg1EGRHDxKDkplDlhT
 4Qs1B01Nfs/4bok4nwxx4WLg494rQywJmM2W2S05kOpQ4h8YONx9IcQDp5cKweQS9e3R
 Yw5qK1wps+nm9uCgmP3ipzXS1Y+ycYXL1rBuviCBUbrSpZUgUb1zxLJnAK7284HTqXFJ
 7S6LtKuR+wI+MqwsWsH+hL+Dxi6FAXZDGuhormMDT9GYofpeTxhaRmWxYxjY+bX1V6Lk
 9V/d2j7I2RYBZyn7KQslkAAuqwHJf6MvfqDm/qNaPQqvPd8PHJBgFiJZaIz29KpkQiLV
 7gpQ==
X-Gm-Message-State: APjAAAXvw9ywdo2blAcnoBActeugkxdVOOI3aX6JdlHs+Ru5EJKx7NJt
 8J7if2E5JbjlCCQ93PFHL7nosw==
X-Google-Smtp-Source: APXvYqypnIHRw+gX7a2zAkaV+URyBUoTsPo6A6KcuRTTuMEOhltXd4pwHW+VP0k4vY8gZmJbUDCW8A==
X-Received: by 2002:a17:902:e613:: with SMTP id
 cm19mr7207697plb.299.1566606654666; 
 Fri, 23 Aug 2019 17:30:54 -0700 (PDT)
Received: from localhost ([12.206.222.5])
 by smtp.gmail.com with ESMTPSA id h9sm2890450pgh.51.2019.08.23.17.30.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Aug 2019 17:30:54 -0700 (PDT)
Date: Fri, 23 Aug 2019 17:30:53 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: David Abdurachmanov <david.abdurachmanov@gmail.com>, 
 Tycho Andersen <tycho@tycho.ws>
Subject: Re: [PATCH v2] riscv: add support for SECCOMP and SECCOMP_FILTER
In-Reply-To: <20190822205533.4877-1-david.abdurachmanov@sifive.com>
Message-ID: <alpine.DEB.2.21.9999.1908231717550.25649@viisi.sifive.com>
References: <20190822205533.4877-1-david.abdurachmanov@sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_173055_802185_A9D3F7D8 
X-CRM114-Status: UNSURE (   9.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
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
Cc: Song Liu <songliubraving@fb.com>, Alan Kao <alankao@andestech.com>,
 Palmer Dabbelt <palmer@sifive.com>, Alexei Starovoitov <ast@kernel.org>,
 Oleg Nesterov <oleg@redhat.com>, linux-kselftest@vger.kernel.org,
 linux-riscv@lists.infradead.org, Shuah Khan <shuah@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Yonghong Song <yhs@fb.com>,
 me@carlosedp.com, Albert Ou <aou@eecs.berkeley.edu>,
 Kees Cook <keescook@chromium.org>, Alexios Zavras <alexios.zavras@intel.com>,
 Thomas Gleixner <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>,
 Will Drewry <wad@chromium.org>,
 David Abdurachmanov <david.abdurachmanov@sifive.com>, netdev@vger.kernel.org,
 Anup Patel <Anup.Patel@wdc.com>, linux-kernel@vger.kernel.org,
 Andy Lutomirski <luto@amacapital.net>, Vincent Chen <vincentc@andestech.com>,
 bpf@vger.kernel.org, Martin KaFai Lau <kafai@fb.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 22 Aug 2019, David Abdurachmanov wrote:

> There is one failing kernel selftest: global.user_notification_signal

Is this the only failing test?  Or are the rest of the selftests skipped 
when this test fails, and no further tests are run, as seems to be shown 
here:

  https://lore.kernel.org/linux-riscv/CADnnUqcmDMRe1f+3jG8SPR6jRrnBsY8VVD70VbKEm0NqYeoicA@mail.gmail.com/

For example, looking at the source, I'd naively expect to see the 
user_notification_closed_listener test result -- which follows right 
after the failing test in the selftest source.  But there aren't any 
results?

Also - could you follow up with the author of this failing test to see if 
we can get some more clarity about what might be going wrong here?  It 
appears that the failing test was added in commit 6a21cc50f0c7f ("seccomp: 
add a return code to trap to userspace") by Tycho Andersen 
<tycho@tycho.ws>.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
