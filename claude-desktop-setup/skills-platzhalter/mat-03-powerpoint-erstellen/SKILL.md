---
name: PowerPoint-Präsentation erstellen
description: This skill creates professional didactically-structured PowerPoint presentations for complete teaching units. It transforms lesson planning content (learning objectives, lesson progressions, assignments, and materials) into coherent slide decks with speaker notes. The skill should be triggered when creating a presentation for a complete teaching unit that has already been planned (e.g., after completing the 11-step planning process). When requesting presentation creation, include the full teaching unit content, current learning objectives, lesson progression details, and any specific design requirements.
---

## Purpose

This skill transforms comprehensive teaching unit planning into professional PowerPoint presentations suitable for classroom use. After completing a full teaching unit plan (using the 11-step planning process), this skill creates a structured presentation that follows didactic principles, integrates content from all planning phases, and provides clear visual guidance for instruction delivery.

## When to Use This Skill

Trigger this skill when:
- A complete teaching unit has been planned and documented
- Converting teaching unit content into presentable format for classroom delivery
- Creating slide decks that follow lesson progression phases (following Leisen's 6-phase model)
- Needing to structure presentations by topic with clear hierarchy
- Integrating learning objectives, assignments at multiple differentiation levels, and visual placeholders

## Key Features

### 1. Didactically-Structured Slides

Presentations are organized following the teaching unit's lesson progression structure:

- **Topic Title Slides**: Each topic/lesson receives its own title slide with date and image suggestion
- **Phase-Based Organization**: One slide per phase in each lesson (following Leisen's 6-phase model)
- **Differentiated Assignment Slides**: During work phases, display assignments at three difficulty levels:
  - Base level assignments
  - Support level assignments
  - Extension level assignments
- **Synthesis & Application Slides**: Dedicated slides for "Securing and networking" and "Application/Transfer" phases showing corresponding assignment prompts

### 2. Content Integration

To create presentations, gather and reference:

- Complete teaching unit plan from the planning process (Skills 01-11)
- Learning objectives with Bloom's taxonomy levels
- Lesson progression details from each lesson plan
- Assignment structures with differentiation levels
- Material and resource lists
- Assessment strategies and control measures

### 3. Slide Title Standards

Apply these guidelines to all slides:
- Titles must reflect **actual subject content**, not phase names
  - Good: "Aufbau von Blüten" (Structure of Flowers)
  - Avoid: "Aufgabe Blüten" (Assignment Flowers)
- Content-focused titles improve clarity and professional appearance
- Title relevance to actual teaching content ensures coherent presentation narrative

### 4. Visual Element Management

Handle all graphics, diagrams, and images with explicit placeholders:

- Whenever a visual element is needed, do NOT attempt to embed or generate images
- Instead, insert a **placeholder in red, bold text** describing what visual should be added
  - Format: **"[Grafik: Aufbau einer Blütenknospe]"** or **"[Schaubild: Kreislauf des Wassers]"**
- Use clear, concise descriptions so users can source or create appropriate visuals later
- Include placeholder counts in presentation summary for user awareness

### 5. Output Format & Handover

Presentations are delivered as:

- **File Format**: PPTX (PowerPoint format)
- **Speaker Notes**: Include comprehensive speaker notes on each slide with:
  - Detailed explanation of slide content
  - Suggested talking points and transitions
  - Teaching tips and pacing guidance
  - Reference to learning objectives addressed
- **User Finalization**: Presentations are ready for classroom use but require user to:
  - Add all graphics/diagrams (using red placeholders as guides)
  - Adjust visual design and colors
  - Add animations or transitions if desired
  - Customize branding or school-specific formatting

## Workflow

### Phase 1: Content Preparation

Collect and organize all teaching unit information:
1. Extract lesson progression from the complete unit plan
2. Identify all learning objectives and their Bloom's levels
3. Gather assignment structures with differentiation levels
4. List all resources and materials to reference
5. Note any special requirements (topics, time constraints, specific visuals)

### Phase 2: Slide Architecture

Plan the presentation structure:
1. **Opening Section**: Title slide with course info, date, and image suggestion
2. **Topic Sections**: One title slide per major topic with image suggestion and date
3. **Lesson Slides**: For each lesson in the unit:
   - Introduction/Opening phase slides
   - Work phase slides (showing assignments at base, support, extension levels)
   - Synthesis/Networking slides (showing assignment prompts)
   - Application/Transfer slides (showing assignment prompts)
   - Conclusion/Closing slides as needed
4. **Closing Section**: Summary/reflection slide

### Phase 3: Clarification Process

Before creating the full presentation:

1. Review the complete prompt for accuracy and completeness
2. Ask clarifying questions if needed:
   - Are there specific design preferences? (Layout, color scheme, etc.)
   - Should specific topics receive expanded coverage?
   - Are there particular learning objectives to emphasize?
   - Should speaker notes include specific assessment criteria?
3. Provide optimized version of approach to user
4. Proceed only after user confirmation

### Phase 4: Presentation Generation

Create the PowerPoint with:

1. **Structured Content**: Follow the lesson progression exactly
2. **Clear Titles**: Content-focused titles for every slide
3. **Assignment Integration**: Display assignments at appropriate levels on work-phase slides
4. **Visual Placeholders**: Mark all needed graphics with red, bold descriptions
5. **Speaker Notes**: Comprehensive notes on every slide
6. **Formatting**: Professional, clean layout supporting readability

### Phase 5: Iterative Refinement

Implement user feedback:

1. After each user input requesting changes, provide **complete presentation anew**
2. Maintain all existing content unless explicitly changed
3. Incorporate modifications seamlessly into the presentation structure
4. Re-deliver full presentation (not partial updates)
5. Continue iteration until user confirms satisfaction

## MCP Resource Integration

Reference these resources from the MCP Filesystem Server when available:

- **`2_Zentrale_Ressourcen/Templates/praesentation-master.md`**: Guidelines for formatting, layout standards, and design consistency
- **Teaching unit planning outputs**: Content from Skills 01-11 outputs stored in project context

## Quality Checklist

Before delivering presentations, verify:

- [ ] Every slide has a content-focused title (not a phase name)
- [ ] All visual needs are marked with red, bold placeholders
- [ ] Speaker notes are comprehensive and actionable
- [ ] Differentiation levels appear on assignment slides
- [ ] Lesson progression flows logically through presentation
- [ ] All content from teaching unit is represented
- [ ] File format is PPTX and ready for download
- [ ] Presentation structure matches lesson progression phases

## Common Scenarios

**Scenario 1: Simple Topic Structure**
- Teaching unit with 3 topics, 2 lessons each
- Result: Opening + 3 topic title slides + 6 lesson sections + closing
- Average slides: 20-25 slides depending on lesson complexity

**Scenario 2: Complex Unit with High Differentiation**
- Teaching unit with 5 topics, 3-4 lessons each, detailed assignments at all levels
- Result: Opening + 5 topic titles + 12-15 lesson sections + closing
- Average slides: 40-50 slides with extensive assignment detail

**Scenario 3: Single Topic Deep Dive**
- Teaching unit focused on one complex topic with 4-5 lessons
- Result: Opening + topic title + 4-5 detailed lesson sections + closing
- Average slides: 15-20 slides with detailed phase breakdown

## Notes for Claude

- This skill is typically used **after** the complete 11-step planning process
- Integration with Skills 05 (Learning Objectives), 06 (Mindmap), and 07 (Lesson Progression) ensures content accuracy
- User will need access to graphic creation tools or resources for finalizing visual elements
- Presentations should be suitable for direct classroom projection or printing
- Maintain consistency with any existing school/district presentation standards referenced in project context
