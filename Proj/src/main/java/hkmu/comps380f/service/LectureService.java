/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package hkmu.comps380f.service;

import hkmu.comps380f.dao.AttachmentRepository;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;

/**
 *
 * @author felix
 */
@Service
public class LectureService {

    @Resource
    private AttachmentRepository attachmentRepo;
}
