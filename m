Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9678D194382
	for <lists+linux-riscv@lfdr.de>; Thu, 26 Mar 2020 16:49:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=CIj6uXerr1Bjb0No+AaAcQiVw4/PjRgv7EYhzjSEUFs=; b=b4M+nKH8CTy/97
	CUMmsK4ZX+uC+P1c9VzIfy/Jx00D0ydnOWqVD+0uog49zlKRn6RHXI7Xjnnbx/G7tVorBSGx0JyHq
	Zp1oqVGevM46y9hdq94/lGLYj/3vCtagiFV1QXTKdRk03ZmmUy9gQ+cJ/MH8GWAedcriWmzPjgHk/
	7/FBPKL3HVvpma1VRS00Jgw9a5GRcAJJM75YaVacR/xvbmToFoGj+PJAc9HnGFN3A8NYNrPTTIUlk
	mlxpZhYG+bF74J2B1FrKOrEBW/+JT/dvxJ7WstIbENK7XyI00o4oVE/meOQ4LTc1ODOhw4rzBIGaJ
	8GAg7hEislCVoHsJSEvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHUkp-0006py-D6; Thu, 26 Mar 2020 15:49:11 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHUkg-0006i2-NG
 for linux-riscv@lists.infradead.org; Thu, 26 Mar 2020 15:49:06 +0000
Received: by mail-pj1-x1041.google.com with SMTP id g9so2575665pjp.0
 for <linux-riscv@lists.infradead.org>; Thu, 26 Mar 2020 08:49:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=CIj6uXerr1Bjb0No+AaAcQiVw4/PjRgv7EYhzjSEUFs=;
 b=BetrDoKQPL5EtKYZrCev/W1cHjZMqXDYNRIK7vNtM9gCZoB5XtTxlVvqbXS9e5mq53
 v4dZm5gchHWofNbVNtjXzxXGjXRLddq7Rqn6vZbJ39HdpzcXjKKzmNe2IM0XpIE5+yiE
 D+AJJcj/I3Wh4iO62z+TVFbvsB8HPeXnsNU+4K4Wx434Xj20rGg99cGYw+8tDgUn405d
 IYGpXx8nd+8WYpKK74ZnSlbEmgRyYTKqT8yrZamt5pg5fGSQsQiEW59ntFRHGoXyXQ5t
 sjsCp7KfZeKPq2yzvCr4qbL/CAUzndUo14Cuvi99sOwgiC3u0fmyuLTlGoDTzGv9ITYY
 rXXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=CIj6uXerr1Bjb0No+AaAcQiVw4/PjRgv7EYhzjSEUFs=;
 b=E/oPmjJR1u7tArqLg3bVLhVnG/Aj8rysdoQvduqzoVgX0K+CdhJURwEEaoI+DXBL6c
 sPqdSSNox269NBlK3d1FPzPSwPl3dkXtJmjx9atvXZR586Wy0eOmBXhYCcys+At3wDSU
 9ymjALcPgLPF01JfaTDTL3aMDOr2pi7OGXjtlw9xUna9zIjc+cD8hrB83bIIQOemNjDC
 FIm6J1YYqHaEELo2VXyTTwiIK0Zpco+ZuwxrQIkXJiMNuvJEZ2MPC0+doMPzQwQpyAPo
 vadu2pYlee/vo+EHqtphokbd387oKlWOJl6bew7yayPicZ+x/0k4+MkzIPcv62+Hnu5x
 2lMw==
X-Gm-Message-State: ANhLgQ0vWSKNNmLx5+bxhzSEJ5iTEbwDcctbnS7n9rpQbeFGcat1H3v0
 7wXeY6tnnC+skV4GW6IgPDeoF9Gvp64=
X-Google-Smtp-Source: ADFU+vv6CM0uIviqaGjR6KbfVffVGjgvfToavSM9QvLevnGh6yieBo9fkbjo0sz+sB7J+Be5WT3XNQ==
X-Received: by 2002:a17:902:207:: with SMTP id 7mr8969012plc.216.1585237741274; 
 Thu, 26 Mar 2020 08:49:01 -0700 (PDT)
Received: from localhost (c-67-161-15-180.hsd1.ca.comcast.net. [67.161.15.180])
 by smtp.gmail.com with ESMTPSA id l59sm5887357pjb.2.2020.03.26.08.49.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Mar 2020 08:49:00 -0700 (PDT)
Date: Thu, 26 Mar 2020 08:49:00 -0700 (PDT)
X-Google-Original-Date: Thu, 26 Mar 2020 08:48:58 PDT (-0700)
Subject: Re: [PATCH V2 3/3] rseq/selftests: Add support for riscv
In-Reply-To: <1583733592-22873-4-git-send-email-vincent.chen@sifive.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: vincent.chen@sifive.com
Message-ID: <mhng-e1457171-db30-49be-9e98-298f4d1453ed@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_084902_924154_F766DE1B 
X-CRM114-Status: GOOD (  21.03  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: vincent.chen@sifive.com, linux-riscv@lists.infradead.org,
 mathieu.desnoyers@efficios.com, linux-kselftest@vger.kernel.org,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sun, 08 Mar 2020 22:59:52 PDT (-0700), vincent.chen@sifive.com wrote:
> Add support for risc-v in the rseq selftests, which covers both
> 64-bit and 32-bit ISA with little endian mode.
>
> Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
> ---
>  tools/testing/selftests/rseq/param_test.c |  23 ++
>  tools/testing/selftests/rseq/rseq-riscv.h | 622 ++++++++++++++++++++++++++++++
>  tools/testing/selftests/rseq/rseq.h       |   2 +
>  3 files changed, 647 insertions(+)
>  create mode 100644 tools/testing/selftests/rseq/rseq-riscv.h

There are a ton of checkpatch errors in here.

>
> diff --git a/tools/testing/selftests/rseq/param_test.c b/tools/testing/selftests/rseq/param_test.c
> index e8a657a5f48a..4032dfaa3af2 100644
> --- a/tools/testing/selftests/rseq/param_test.c
> +++ b/tools/testing/selftests/rseq/param_test.c
> @@ -205,6 +205,29 @@ unsigned int yield_mod_cnt, nr_abort;
>  	"addiu " INJECT_ASM_REG ", -1\n\t" \
>  	"bnez " INJECT_ASM_REG ", 222b\n\t" \
>  	"333:\n\t"
> +#elif defined(__riscv)
> +
> +#define RSEQ_INJECT_INPUT \
> +	, [loop_cnt_1]"m"(loop_cnt[1]) \
> +	, [loop_cnt_2]"m"(loop_cnt[2]) \
> +	, [loop_cnt_3]"m"(loop_cnt[3]) \
> +	, [loop_cnt_4]"m"(loop_cnt[4]) \
> +	, [loop_cnt_5]"m"(loop_cnt[5]) \
> +	, [loop_cnt_6]"m"(loop_cnt[6])
> +
> +#define INJECT_ASM_REG	"t1"
> +
> +#define RSEQ_INJECT_CLOBBER \
> +	, INJECT_ASM_REG
> +
> +#define RSEQ_INJECT_ASM(n)					\
> +	"lw " INJECT_ASM_REG ", %[loop_cnt_" #n "]\n\t"		\
> +	"beqz " INJECT_ASM_REG ", 333f\n\t"			\
> +	"222:\n\t"						\
> +	"addi  " INJECT_ASM_REG "," INJECT_ASM_REG ", -1\n\t"	\
> +	"bnez " INJECT_ASM_REG ", 222b\n\t"			\
> +	"333:\n\t"
> +
>
>  #else
>  #error unsupported target
> diff --git a/tools/testing/selftests/rseq/rseq-riscv.h b/tools/testing/selftests/rseq/rseq-riscv.h
> new file mode 100644
> index 000000000000..56b47db4a9a4
> --- /dev/null
> +++ b/tools/testing/selftests/rseq/rseq-riscv.h
> @@ -0,0 +1,622 @@
> +/* SPDX-License-Identifier: LGPL-2.1 OR MIT */
> +/*
> + * Select the instruction "csrw mhartid, x0" as the RSEQ_SIG. Unlike
> + * other architecture, the ebreak instruction has no immediate field for
> + * distinguishing purposes. Hence, ebreak is not suitable as RSEQ_SIG.
> + * "csrw mhartid, x0" can also satisfy the RSEQ requirement because it
> + * is an uncommon instruction and will raise an illegal instruction
> + * exception when executed in all modes.
> + */
> +
> +#if __ORDER_LITTLE_ENDIAN__ == 1234
> +#define RSEQ_SIG   0xf1401073  /* csrr mhartid, x0 */
> +#else
> +#error "Currently, RSEQ only supports Little-Endian version"
> +#endif
> +
> +#if __riscv_xlen == 64
> +#define __REG_SEL(a, b)	a
> +#elif __riscv_xlen == 32
> +#define __REG_SEL(a, b)	b
> +#endif
> +
> +#define REG_L	__REG_SEL("ld ", "lw ")
> +#define REG_S	__REG_SEL("sd ", "sw ")
> +
> +#define RISCV_FENCE(p, s) \
> +	__asm__ __volatile__ ("fence " #p "," #s : : : "memory")
> +#define rseq_smp_mb()	RISCV_FENCE(rw, rw)
> +#define rseq_smp_rmb()	RISCV_FENCE(r, r)
> +#define rseq_smp_wmb()	RISCV_FENCE(w, w)
> +#define RSEQ_ASM_TMP_REG_1	"t6"
> +#define RSEQ_ASM_TMP_REG_2	"t5"
> +#define RSEQ_ASM_TMP_REG_3	"t4"
> +#define RSEQ_ASM_TMP_REG_4	"t3"
> +
> +#define rseq_smp_load_acquire(p)					\
> +__extension__ ({							\
> +	__typeof(*p) ____p1 = RSEQ_READ_ONCE(*p);			\
> +	RISCV_FENCE(r, rw)						\
> +	____p1;								\
> +})
> +
> +#define rseq_smp_acquire__after_ctrl_dep()	rseq_smp_rmb()
> +
> +#define rseq_smp_store_release(p, v)					\
> +do {									\
> +	RISCV_FENCE(rw, w);						\
> +	RSEQ_WRITE_ONCE(*p, v);						\
> +} while (0)
> +
> +
> +#ifdef RSEQ_SKIP_FASTPATH
> +#include "rseq-skip.h"
> +#else /* !RSEQ_SKIP_FASTPATH */
> +
> +#define __RSEQ_ASM_DEFINE_TABLE(label, version, flags, start_ip,	\
> +				post_commit_offset, abort_ip)		\
> +	".pushsection	__rseq_cs, \"aw\"\n"				\
> +	".balign	32\n"						\
> +	__rseq_str(label) ":\n"						\
> +	".long	" __rseq_str(version) ", " __rseq_str(flags) "\n"	\
> +	".quad	" __rseq_str(start_ip) ", "				\
> +			  __rseq_str(post_commit_offset) ", "		\
> +			  __rseq_str(abort_ip) "\n"			\
> +	".popsection\n\t"						\
> +	".pushsection __rseq_cs_ptr_array, \"aw\"\n"			\
> +	".quad " __rseq_str(label) "b\n"				\
> +	".popsection\n"
> +
> +#define RSEQ_ASM_DEFINE_TABLE(label, start_ip, post_commit_ip, abort_ip) \
> +	__RSEQ_ASM_DEFINE_TABLE(label, 0x0, 0x0, start_ip,		 \
> +				(post_commit_ip - start_ip), abort_ip)
> +
> +
> +/*
> + * Exit points of a rseq critical section consist of all instructions outside
> + * of the critical section where a critical section can either branch to or
> + * reach through the normal course of its execution. The abort IP and the
> + * post-commit IP are already part of the __rseq_cs section and should not be
> + * explicitly defined as additional exit points. Knowing all exit points is
> + * useful to assist debuggers stepping over the critical section.
> + */
> +#define RSEQ_ASM_DEFINE_EXIT_POINT(start_ip, exit_ip)			\
> +	".pushsection __rseq_exit_point_array, \"aw\"\n"		\
> +	".quad " __rseq_str(start_ip) ", " __rseq_str(exit_ip) "\n"	\
> +	".popsection\n"
> +
> +#define RSEQ_ASM_STORE_RSEQ_CS(label, cs_label, rseq_cs)		\
> +	RSEQ_INJECT_ASM(1)						\
> +	"la	"RSEQ_ASM_TMP_REG_1 ", " __rseq_str(cs_label) "\n"	\
> +	REG_S	RSEQ_ASM_TMP_REG_1 ", %[" __rseq_str(rseq_cs) "]\n"	\
> +	__rseq_str(label) ":\n"
> +
> +#define RSEQ_ASM_DEFINE_ABORT(label, abort_label)			\
> +	"j	222f\n"							\
> +	".balign	4\n"						\
> +	".long "	__rseq_str(RSEQ_SIG) "\n"			\
> +	__rseq_str(label) ":\n"						\
> +	"j	%l[" __rseq_str(abort_label) "]\n"			\
> +	"222:\n"
> +
> +#define RSEQ_ASM_OP_STORE(value, var)					\
> +	REG_S	"%[" __rseq_str(value) "], %[" __rseq_str(var) "]\n"
> +
> +#define RSEQ_ASM_OP_CMPEQ(var, expect, label)				\
> +	REG_L	RSEQ_ASM_TMP_REG_1 ", %[" __rseq_str(var) "]\n"		\
> +	"bne	"RSEQ_ASM_TMP_REG_1 ", %[" __rseq_str(expect) "] ,"	\
> +		  __rseq_str(label) "\n"
> +
> +#define RSEQ_ASM_OP_CMPEQ32(var, expect, label)				\
> +	"lw	"RSEQ_ASM_TMP_REG_1 ", %[" __rseq_str(var) "]\n"	\
> +	"bne	"RSEQ_ASM_TMP_REG_1 ", %[" __rseq_str(expect) "] ,"	\
> +		  __rseq_str(label) "\n"
> +
> +#define RSEQ_ASM_OP_CMPNE(var, expect, label)				\
> +	REG_L	RSEQ_ASM_TMP_REG_1 ", %[" __rseq_str(var) "]\n"		\
> +	"beq	"RSEQ_ASM_TMP_REG_1 ", %[" __rseq_str(expect) "] ,"	\
> +		  __rseq_str(label) "\n"
> +
> +#define RSEQ_ASM_CMP_CPU_ID(cpu_id, current_cpu_id, label)		\
> +	RSEQ_INJECT_ASM(2)						\
> +	RSEQ_ASM_OP_CMPEQ32(current_cpu_id, cpu_id, label)
> +
> +#define RSEQ_ASM_OP_R_LOAD(var)						\
> +	REG_L	RSEQ_ASM_TMP_REG_1 ", %[" __rseq_str(var) "]\n"
> +
> +#define RSEQ_ASM_OP_R_STORE(var)					\
> +	REG_S	RSEQ_ASM_TMP_REG_1 ", %[" __rseq_str(var) "]\n"
> +
> +#define RSEQ_ASM_OP_R_LOAD_OFF(offset)					\
> +	"add	"RSEQ_ASM_TMP_REG_1 ", %[" __rseq_str(offset) "], "	\
> +		 RSEQ_ASM_TMP_REG_1 "\n"				\
> +	REG_L	RSEQ_ASM_TMP_REG_1 ", (" RSEQ_ASM_TMP_REG_1 ")\n"
> +
> +#define RSEQ_ASM_OP_R_ADD(count)					\
> +	"add	"RSEQ_ASM_TMP_REG_1 ", " RSEQ_ASM_TMP_REG_1		\
> +		", %[" __rseq_str(count) "]\n"
> +
> +#define RSEQ_ASM_OP_FINAL_STORE(value, var, post_commit_label)		\
> +	RSEQ_ASM_OP_STORE(value, var)					\
> +	__rseq_str(post_commit_label) ":\n"
> +
> +#define RSEQ_ASM_OP_FINAL_STORE_RELEASE(value, var, post_commit_label)	\
> +	"fence	rw, w\n"						\
> +	RSEQ_ASM_OP_STORE(value, var)					\
> +	__rseq_str(post_commit_label) ":\n"
> +
> +#define RSEQ_ASM_OP_R_FINAL_STORE(var, post_commit_label)		\
> +	REG_S	RSEQ_ASM_TMP_REG_1 ", %[" __rseq_str(var) "]\n"		\
> +	__rseq_str(post_commit_label) ":\n"
> +
> +#define RSEQ_ASM_OP_R_BAD_MEMCPY(dst, src, len)				\
> +	"beqz	%[" __rseq_str(len) "], 333f\n"				\
> +	"mv	" RSEQ_ASM_TMP_REG_1 ", %[" __rseq_str(len) "]\n"	\
> +	"mv	" RSEQ_ASM_TMP_REG_2 ", %[" __rseq_str(src) "]\n"	\
> +	"mv	" RSEQ_ASM_TMP_REG_3 ", %[" __rseq_str(dst) "]\n"	\
> +	"222:\n"							\
> +	"lb	" RSEQ_ASM_TMP_REG_4 ", 0(" RSEQ_ASM_TMP_REG_2 ")\n"	\
> +	"sb	" RSEQ_ASM_TMP_REG_4 ", 0(" RSEQ_ASM_TMP_REG_3 ")\n"	\
> +	"addi	" RSEQ_ASM_TMP_REG_1 ", " RSEQ_ASM_TMP_REG_1 ", -1\n"	\
> +	"addi	" RSEQ_ASM_TMP_REG_2 ", " RSEQ_ASM_TMP_REG_2 ", 1\n"	\
> +	"addi	" RSEQ_ASM_TMP_REG_3 ", " RSEQ_ASM_TMP_REG_3 ", 1\n"	\
> +	"bnez	" RSEQ_ASM_TMP_REG_1 ", 222b\n"				\
> +	"333:\n"
> +
> +static inline __attribute__((always_inline))
> +int rseq_cmpeqv_storev(intptr_t *v, intptr_t expect, intptr_t newv, int cpu)
> +{
> +	RSEQ_INJECT_C(9)
> +
> +	__asm__ __volatile__ goto (
> +		RSEQ_ASM_DEFINE_TABLE(1, 2f, 3f, 4f)
> +		RSEQ_ASM_DEFINE_EXIT_POINT(2f, %l[cmpfail])
> +#ifdef RSEQ_COMPARE_TWICE
> +		RSEQ_ASM_DEFINE_EXIT_POINT(2f, %l[error1])
> +		RSEQ_ASM_DEFINE_EXIT_POINT(2f, %l[error2])
> +#endif
> +		RSEQ_ASM_STORE_RSEQ_CS(2, 1b, rseq_cs)
> +		RSEQ_ASM_CMP_CPU_ID(cpu_id, current_cpu_id, 4f)
> +		RSEQ_INJECT_ASM(3)
> +		RSEQ_ASM_OP_CMPEQ(v, expect, %l[cmpfail])
> +		RSEQ_INJECT_ASM(4)
> +#ifdef RSEQ_COMPARE_TWICE
> +		RSEQ_ASM_CMP_CPU_ID(cpu_id, current_cpu_id, %l[error1])
> +		RSEQ_ASM_OP_CMPEQ(v, expect, %l[error2])
> +#endif
> +		RSEQ_ASM_OP_FINAL_STORE(newv, v, 3)
> +		RSEQ_INJECT_ASM(5)
> +		RSEQ_ASM_DEFINE_ABORT(4, abort)
> +		: /* gcc asm goto does not allow outputs */
> +		: [cpu_id]		"r" (cpu),
> +		  [current_cpu_id]	"m" (__rseq_abi.cpu_id),
> +		  [rseq_cs]		"m" (__rseq_abi.rseq_cs),
> +		  [v]			"m" (*v),
> +		  [expect]		"r" (expect),
> +		  [newv]		"r" (newv)
> +		  RSEQ_INJECT_INPUT
> +		: "memory", RSEQ_ASM_TMP_REG_1
> +		: abort, cmpfail
> +#ifdef RSEQ_COMPARE_TWICE
> +		  , error1, error2
> +#endif
> +	);
> +
> +	return 0;
> +abort:
> +	RSEQ_INJECT_FAILED
> +	return -1;
> +cmpfail:
> +	return 1;
> +#ifdef RSEQ_COMPARE_TWICE
> +error1:
> +	rseq_bug("cpu_id comparison failed");
> +error2:
> +	rseq_bug("expected value comparison failed");
> +#endif
> +}
> +
> +static inline __attribute__((always_inline))
> +int rseq_cmpnev_storeoffp_load(intptr_t *v, intptr_t expectnot,
> +			       off_t voffp, intptr_t *load, int cpu)
> +{
> +	RSEQ_INJECT_C(9)
> +
> +	__asm__ __volatile__ goto (
> +		RSEQ_ASM_DEFINE_TABLE(1, 2f, 3f, 4f)
> +		RSEQ_ASM_DEFINE_EXIT_POINT(2f, %l[cmpfail])
> +#ifdef RSEQ_COMPARE_TWICE
> +		RSEQ_ASM_DEFINE_EXIT_POINT(2f, %l[error1])
> +		RSEQ_ASM_DEFINE_EXIT_POINT(2f, %l[error2])
> +#endif
> +		RSEQ_ASM_STORE_RSEQ_CS(2, 1b, rseq_cs)
> +		RSEQ_ASM_CMP_CPU_ID(cpu_id, current_cpu_id, 4f)
> +		RSEQ_INJECT_ASM(3)
> +		RSEQ_ASM_OP_CMPNE(v, expectnot, %l[cmpfail])
> +		RSEQ_INJECT_ASM(4)
> +#ifdef RSEQ_COMPARE_TWICE
> +		RSEQ_ASM_CMP_CPU_ID(cpu_id, current_cpu_id, %l[error1])
> +		RSEQ_ASM_OP_CMPNE(v, expectnot, %l[error2])
> +#endif
> +		RSEQ_ASM_OP_R_LOAD(v)
> +		RSEQ_ASM_OP_R_STORE(load)
> +		RSEQ_ASM_OP_R_LOAD_OFF(voffp)
> +		RSEQ_ASM_OP_R_FINAL_STORE(v, 3)
> +		RSEQ_INJECT_ASM(5)
> +		RSEQ_ASM_DEFINE_ABORT(4, abort)
> +		: /* gcc asm goto does not allow outputs */
> +		: [cpu_id]		"r" (cpu),
> +		  [current_cpu_id]	"m" (__rseq_abi.cpu_id),
> +		  [rseq_cs]		"m" (__rseq_abi.rseq_cs),
> +		  [v]			"m" (*v),
> +		  [expectnot]		"r" (expectnot),
> +		  [load]		"m" (*load),
> +		  [voffp]		"r" (voffp)
> +		  RSEQ_INJECT_INPUT
> +		: "memory", RSEQ_ASM_TMP_REG_1
> +		: abort, cmpfail
> +#ifdef RSEQ_COMPARE_TWICE
> +		  , error1, error2
> +#endif
> +	);
> +	return 0;
> +abort:
> +	RSEQ_INJECT_FAILED
> +	return -1;
> +cmpfail:
> +	return 1;
> +#ifdef RSEQ_COMPARE_TWICE
> +error1:
> +	rseq_bug("cpu_id comparison failed");
> +error2:
> +	rseq_bug("expected value comparison failed");
> +#endif
> +}
> +
> +static inline __attribute__((always_inline))
> +int rseq_addv(intptr_t *v, intptr_t count, int cpu)
> +{
> +	RSEQ_INJECT_C(9)
> +
> +	__asm__ __volatile__ goto (
> +		RSEQ_ASM_DEFINE_TABLE(1, 2f, 3f, 4f)
> +#ifdef RSEQ_COMPARE_TWICE
> +		RSEQ_ASM_DEFINE_EXIT_POINT(2f, %l[error1])
> +#endif
> +		RSEQ_ASM_STORE_RSEQ_CS(2, 1b, rseq_cs)
> +		RSEQ_ASM_CMP_CPU_ID(cpu_id, current_cpu_id, 4f)
> +		RSEQ_INJECT_ASM(3)
> +#ifdef RSEQ_COMPARE_TWICE
> +		RSEQ_ASM_CMP_CPU_ID(cpu_id, current_cpu_id, %l[error1])
> +#endif
> +		RSEQ_ASM_OP_R_LOAD(v)
> +		RSEQ_ASM_OP_R_ADD(count)
> +		RSEQ_ASM_OP_R_FINAL_STORE(v, 3)
> +		RSEQ_INJECT_ASM(4)
> +		RSEQ_ASM_DEFINE_ABORT(4, abort)
> +		: /* gcc asm goto does not allow outputs */
> +		: [cpu_id]		"r" (cpu),
> +		  [current_cpu_id]	"m" (__rseq_abi.cpu_id),
> +		  [rseq_cs]		"m" (__rseq_abi.rseq_cs),
> +		  [v]			"m" (*v),
> +		  [count]		"r" (count)
> +		  RSEQ_INJECT_INPUT
> +		: "memory", RSEQ_ASM_TMP_REG_1
> +		: abort
> +#ifdef RSEQ_COMPARE_TWICE
> +		  , error1
> +#endif
> +	);
> +	return 0;
> +abort:
> +	RSEQ_INJECT_FAILED
> +	return -1;
> +#ifdef RSEQ_COMPARE_TWICE
> +error1:
> +	rseq_bug("cpu_id comparison failed");
> +#endif
> +}
> +
> +static inline __attribute__((always_inline))
> +int rseq_cmpeqv_trystorev_storev(intptr_t *v, intptr_t expect,
> +				 intptr_t *v2, intptr_t newv2,
> +				 intptr_t newv, int cpu)
> +{
> +	RSEQ_INJECT_C(9)
> +
> +	__asm__ __volatile__ goto (
> +		RSEQ_ASM_DEFINE_TABLE(1, 2f, 3f, 4f)
> +		RSEQ_ASM_DEFINE_EXIT_POINT(2f, %l[cmpfail])
> +#ifdef RSEQ_COMPARE_TWICE
> +		RSEQ_ASM_DEFINE_EXIT_POINT(2f, %l[error1])
> +		RSEQ_ASM_DEFINE_EXIT_POINT(2f, %l[error2])
> +#endif
> +		RSEQ_ASM_STORE_RSEQ_CS(2, 1b, rseq_cs)
> +		RSEQ_ASM_CMP_CPU_ID(cpu_id, current_cpu_id, 4f)
> +		RSEQ_INJECT_ASM(3)
> +		RSEQ_ASM_OP_CMPEQ(v, expect, %l[cmpfail])
> +		RSEQ_INJECT_ASM(4)
> +#ifdef RSEQ_COMPARE_TWICE
> +		RSEQ_ASM_CMP_CPU_ID(cpu_id, current_cpu_id, %l[error1])
> +		RSEQ_ASM_OP_CMPEQ(v, expect, %l[error2])
> +#endif
> +		RSEQ_ASM_OP_STORE(newv2, v2)
> +		RSEQ_INJECT_ASM(5)
> +		RSEQ_ASM_OP_FINAL_STORE(newv, v, 3)
> +		RSEQ_INJECT_ASM(6)
> +		RSEQ_ASM_DEFINE_ABORT(4, abort)
> +		: /* gcc asm goto does not allow outputs */
> +		: [cpu_id]		"r" (cpu),
> +		  [current_cpu_id]	"m" (__rseq_abi.cpu_id),
> +		  [rseq_cs]		"m" (__rseq_abi.rseq_cs),
> +		  [expect]		"r" (expect),
> +		  [v]			"m" (*v),
> +		  [newv]		"r" (newv),
> +		  [v2]			"m" (*v2),
> +		  [newv2]		"r" (newv2)
> +		  RSEQ_INJECT_INPUT
> +		: "memory", RSEQ_ASM_TMP_REG_1
> +		: abort, cmpfail
> +#ifdef RSEQ_COMPARE_TWICE
> +		  , error1, error2
> +#endif
> +	);
> +
> +	return 0;
> +abort:
> +	RSEQ_INJECT_FAILED
> +	return -1;
> +cmpfail:
> +	return 1;
> +#ifdef RSEQ_COMPARE_TWICE
> +error1:
> +	rseq_bug("cpu_id comparison failed");
> +error2:
> +	rseq_bug("expected value comparison failed");
> +#endif
> +}
> +
> +static inline __attribute__((always_inline))
> +int rseq_cmpeqv_trystorev_storev_release(intptr_t *v, intptr_t expect,
> +					 intptr_t *v2, intptr_t newv2,
> +					 intptr_t newv, int cpu)
> +{
> +	RSEQ_INJECT_C(9)
> +
> +	__asm__ __volatile__ goto (
> +		RSEQ_ASM_DEFINE_TABLE(1, 2f, 3f, 4f)
> +		RSEQ_ASM_DEFINE_EXIT_POINT(2f, %l[cmpfail])
> +#ifdef RSEQ_COMPARE_TWICE
> +		RSEQ_ASM_DEFINE_EXIT_POINT(2f, %l[error1])
> +		RSEQ_ASM_DEFINE_EXIT_POINT(2f, %l[error2])
> +#endif
> +		RSEQ_ASM_STORE_RSEQ_CS(2, 1b, rseq_cs)
> +		RSEQ_ASM_CMP_CPU_ID(cpu_id, current_cpu_id, 4f)
> +		RSEQ_INJECT_ASM(3)
> +		RSEQ_ASM_OP_CMPEQ(v, expect, %l[cmpfail])
> +		RSEQ_INJECT_ASM(4)
> +#ifdef RSEQ_COMPARE_TWICE
> +		RSEQ_ASM_CMP_CPU_ID(cpu_id, current_cpu_id, %l[error1])
> +		RSEQ_ASM_OP_CMPEQ(v, expect, %l[error2])
> +#endif
> +		RSEQ_ASM_OP_STORE(newv2, v2)
> +		RSEQ_INJECT_ASM(5)
> +		RSEQ_ASM_OP_FINAL_STORE_RELEASE(newv, v, 3)
> +		RSEQ_INJECT_ASM(6)
> +		RSEQ_ASM_DEFINE_ABORT(4, abort)
> +		: /* gcc asm goto does not allow outputs */
> +		: [cpu_id]		"r" (cpu),
> +		  [current_cpu_id]	"m" (__rseq_abi.cpu_id),
> +		  [rseq_cs]		"m" (__rseq_abi.rseq_cs),
> +		  [expect]		"r" (expect),
> +		  [v]			"m" (*v),
> +		  [newv]		"r" (newv),
> +		  [v2]			"m" (*v2),
> +		  [newv2]		"r" (newv2)
> +		  RSEQ_INJECT_INPUT
> +		: "memory", RSEQ_ASM_TMP_REG_1
> +		: abort, cmpfail
> +#ifdef RSEQ_COMPARE_TWICE
> +		  , error1, error2
> +#endif
> +	);
> +
> +	return 0;
> +abort:
> +	RSEQ_INJECT_FAILED
> +	return -1;
> +cmpfail:
> +	return 1;
> +#ifdef RSEQ_COMPARE_TWICE
> +error1:
> +	rseq_bug("cpu_id comparison failed");
> +error2:
> +	rseq_bug("expected value comparison failed");
> +#endif
> +}
> +
> +static inline __attribute__((always_inline))
> +int rseq_cmpeqv_cmpeqv_storev(intptr_t *v, intptr_t expect,
> +			      intptr_t *v2, intptr_t expect2,
> +			      intptr_t newv, int cpu)
> +{
> +	RSEQ_INJECT_C(9)
> +
> +	__asm__ __volatile__ goto (
> +		RSEQ_ASM_DEFINE_TABLE(1, 2f, 3f, 4f)
> +		RSEQ_ASM_DEFINE_EXIT_POINT(2f, %l[cmpfail])
> +#ifdef RSEQ_COMPARE_TWICE
> +		RSEQ_ASM_DEFINE_EXIT_POINT(2f, %l[error1])
> +		RSEQ_ASM_DEFINE_EXIT_POINT(2f, %l[error2])
> +		RSEQ_ASM_DEFINE_EXIT_POINT(2f, %l[error3])
> +#endif
> +		RSEQ_ASM_STORE_RSEQ_CS(2, 1b, rseq_cs)
> +		RSEQ_ASM_CMP_CPU_ID(cpu_id, current_cpu_id, 4f)
> +		RSEQ_INJECT_ASM(3)
> +		RSEQ_ASM_OP_CMPEQ(v, expect, %l[cmpfail])
> +		RSEQ_INJECT_ASM(4)
> +		RSEQ_ASM_OP_CMPEQ(v2, expect2, %l[cmpfail])
> +		RSEQ_INJECT_ASM(5)
> +#ifdef RSEQ_COMPARE_TWICE
> +		RSEQ_ASM_CMP_CPU_ID(cpu_id, current_cpu_id, %l[error1])
> +		RSEQ_ASM_OP_CMPEQ(v, expect, %l[error2])
> +		RSEQ_ASM_OP_CMPEQ(v2, expect2, %l[error3])
> +#endif
> +		RSEQ_ASM_OP_FINAL_STORE(newv, v, 3)
> +		RSEQ_INJECT_ASM(6)
> +		RSEQ_ASM_DEFINE_ABORT(4, abort)
> +		: /* gcc asm goto does not allow outputs */
> +		: [cpu_id]		"r" (cpu),
> +		  [current_cpu_id]	"m" (__rseq_abi.cpu_id),
> +		  [rseq_cs]		"m" (__rseq_abi.rseq_cs),
> +		  [v]			"m" (*v),
> +		  [expect]		"r" (expect),
> +		  [v2]			"m" (*v2),
> +		  [expect2]		"r" (expect2),
> +		  [newv]		"r" (newv)
> +		  RSEQ_INJECT_INPUT
> +		: "memory", RSEQ_ASM_TMP_REG_1
> +		: abort, cmpfail
> +#ifdef RSEQ_COMPARE_TWICE
> +		  , error1, error2, error3
> +#endif
> +	);
> +
> +	return 0;
> +abort:
> +	RSEQ_INJECT_FAILED
> +	return -1;
> +cmpfail:
> +	return 1;
> +#ifdef RSEQ_COMPARE_TWICE
> +error1:
> +	rseq_bug("cpu_id comparison failed");
> +error2:
> +	rseq_bug("expected value comparison failed");
> +error3:
> +	rseq_bug("2nd expected value comparison failed");
> +#endif
> +}
> +
> +static inline __attribute__((always_inline))
> +int rseq_cmpeqv_trymemcpy_storev(intptr_t *v, intptr_t expect,
> +				 void *dst, void *src, size_t len,
> +				 intptr_t newv, int cpu)
> +{
> +	RSEQ_INJECT_C(9)
> +	__asm__ __volatile__ goto (
> +		RSEQ_ASM_DEFINE_TABLE(1, 2f, 3f, 4f)
> +		RSEQ_ASM_DEFINE_EXIT_POINT(2f, %l[cmpfail])
> +#ifdef RSEQ_COMPARE_TWICE
> +		RSEQ_ASM_DEFINE_EXIT_POINT(2f, %l[error1])
> +		RSEQ_ASM_DEFINE_EXIT_POINT(2f, %l[error2])
> +#endif
> +		RSEQ_ASM_STORE_RSEQ_CS(2, 1b, rseq_cs)
> +		RSEQ_ASM_CMP_CPU_ID(cpu_id, current_cpu_id, 4f)
> +		RSEQ_INJECT_ASM(3)
> +		RSEQ_ASM_OP_CMPEQ(v, expect, %l[cmpfail])
> +		RSEQ_INJECT_ASM(4)
> +#ifdef RSEQ_COMPARE_TWICE
> +		RSEQ_ASM_CMP_CPU_ID(cpu_id, current_cpu_id, %l[error1])
> +		RSEQ_ASM_OP_CMPEQ(v, expect, %l[error2])
> +#endif
> +		RSEQ_ASM_OP_R_BAD_MEMCPY(dst, src, len)
> +		RSEQ_INJECT_ASM(5)
> +		RSEQ_ASM_OP_FINAL_STORE(newv, v, 3)
> +		RSEQ_INJECT_ASM(6)
> +		RSEQ_ASM_DEFINE_ABORT(4, abort)
> +		: /* gcc asm goto does not allow outputs */
> +		: [cpu_id]		"r" (cpu),
> +		  [current_cpu_id]	"m" (__rseq_abi.cpu_id),
> +		  [rseq_cs]		"m" (__rseq_abi.rseq_cs),
> +		  [expect]		"r" (expect),
> +		  [v]			"m" (*v),
> +		  [newv]		"r" (newv),
> +		  [dst]			"r" (dst),
> +		  [src]			"r" (src),
> +		  [len]			"r" (len)
> +		  RSEQ_INJECT_INPUT
> +		: "memory", RSEQ_ASM_TMP_REG_1, RSEQ_ASM_TMP_REG_2,
> +		  RSEQ_ASM_TMP_REG_3, RSEQ_ASM_TMP_REG_4
> +		: abort, cmpfail
> +#ifdef RSEQ_COMPARE_TWICE
> +		  , error1, error2
> +#endif
> +	);
> +
> +	return 0;
> +abort:
> +	RSEQ_INJECT_FAILED
> +	return -1;
> +cmpfail:
> +	return 1;
> +#ifdef RSEQ_COMPARE_TWICE
> +error1:
> +	rseq_bug("cpu_id comparison failed");
> +error2:
> +	rseq_bug("expected value comparison failed");
> +#endif
> +}
> +
> +static inline __attribute__((always_inline))
> +int rseq_cmpeqv_trymemcpy_storev_release(intptr_t *v, intptr_t expect,
> +					 void *dst, void *src, size_t len,
> +					 intptr_t newv, int cpu)
> +{
> +	RSEQ_INJECT_C(9)
> +
> +	__asm__ __volatile__ goto (
> +		RSEQ_ASM_DEFINE_TABLE(1, 2f, 3f, 4f)
> +		RSEQ_ASM_DEFINE_EXIT_POINT(2f, %l[cmpfail])
> +#ifdef RSEQ_COMPARE_TWICE
> +		RSEQ_ASM_DEFINE_EXIT_POINT(2f, %l[error1])
> +		RSEQ_ASM_DEFINE_EXIT_POINT(2f, %l[error2])
> +#endif
> +		RSEQ_ASM_STORE_RSEQ_CS(2, 1b, rseq_cs)
> +		RSEQ_ASM_CMP_CPU_ID(cpu_id, current_cpu_id, 4f)
> +		RSEQ_INJECT_ASM(3)
> +		RSEQ_ASM_OP_CMPEQ(v, expect, %l[cmpfail])
> +		RSEQ_INJECT_ASM(4)
> +#ifdef RSEQ_COMPARE_TWICE
> +		RSEQ_ASM_CMP_CPU_ID(cpu_id, current_cpu_id, %l[error1])
> +		RSEQ_ASM_OP_CMPEQ(v, expect, %l[error2])
> +#endif
> +		RSEQ_ASM_OP_R_BAD_MEMCPY(dst, src, len)
> +		RSEQ_INJECT_ASM(5)
> +		RSEQ_ASM_OP_FINAL_STORE_RELEASE(newv, v, 3)
> +		RSEQ_INJECT_ASM(6)
> +		RSEQ_ASM_DEFINE_ABORT(4, abort)
> +		: /* gcc asm goto does not allow outputs */
> +		: [cpu_id]		"r" (cpu),
> +		  [current_cpu_id]	"m" (__rseq_abi.cpu_id),
> +		  [rseq_cs]		"m" (__rseq_abi.rseq_cs),
> +		  [expect]		"r" (expect),
> +		  [v]			"m" (*v),
> +		  [newv]		"r" (newv),
> +		  [dst]			"r" (dst),
> +		  [src]			"r" (src),
> +		  [len]			"r" (len)
> +		  RSEQ_INJECT_INPUT
> +		: "memory", RSEQ_ASM_TMP_REG_1, RSEQ_ASM_TMP_REG_2,
> +		  RSEQ_ASM_TMP_REG_3, RSEQ_ASM_TMP_REG_4
> +		: abort, cmpfail
> +#ifdef RSEQ_COMPARE_TWICE
> +		  , error1, error2
> +#endif
> +	);
> +
> +	return 0;
> +abort:
> +	RSEQ_INJECT_FAILED
> +	return -1;
> +cmpfail:
> +	return 1;
> +#ifdef RSEQ_COMPARE_TWICE
> +error1:
> +	rseq_bug("cpu_id comparison failed");
> +error2:
> +	rseq_bug("expected value comparison failed");
> +#endif
> +}
> +
> +#endif /* !RSEQ_SKIP_FASTPATH */
> diff --git a/tools/testing/selftests/rseq/rseq.h b/tools/testing/selftests/rseq/rseq.h
> index 3f63eb362b92..72efb6d3d84e 100644
> --- a/tools/testing/selftests/rseq/rseq.h
> +++ b/tools/testing/selftests/rseq/rseq.h
> @@ -79,6 +79,8 @@ extern int __rseq_handled;
>  #include <rseq-mips.h>
>  #elif defined(__s390__)
>  #include <rseq-s390.h>
> +#elif defined(__riscv)
> +#include <rseq-riscv.h>
>  #else
>  #error unsupported target
>  #endif

